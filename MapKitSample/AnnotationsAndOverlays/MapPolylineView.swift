//
//  MapPolylineView.swift
//  MapKitSample
//
//  Created by 阿部紘明 on 2024/03/29.
//

import SwiftUI
import MapKit

struct MapPolylineView: View {
  enum RouteViewMode: String, CaseIterable, Identifiable {
    case straight
    case geodesic
    
    var id: Self { self }
  }
  
  @State private var cameraPosition = MapCameraPosition.region(
    .init(
      center: MapKitSampleApp.sumidaPark,
      span: .init(latitudeDelta: 0.02, longitudeDelta: 0.02)
    )
  )
  
  @State private var route: MKRoute?
  @State private var displayMode: RouteViewMode = .geodesic
  
  var body: some View {
    VStack {
      switch displayMode {
      case .straight:
        Map(position: $cameraPosition) {
          MapPolyline(coordinates: [
            MapKitSampleApp.kaminariGate,
            MapKitSampleApp.skyTree
          ]).stroke(Color.red, lineWidth: 8)
        }
      case .geodesic:
        Map(position: $cameraPosition) {
          if let route = route {
            MapPolyline(route.polyline)
              .stroke(Color.blue, lineWidth: 8)
          }
        }
      }
    }.task {
      switch displayMode {
      case .straight:
        break
      case .geodesic:
        await calculateRoute()
      }
    }
    .toolbar(content: {
      VStack(spacing: 0.0, content: {
        Text("ContoureStyle")
          .font(.system(size: 12))
        Picker("表示", selection: $displayMode) {
          ForEach(RouteViewMode.allCases) { mode in
            Text(mode.rawValue)
          }
        }
      })
    })
  }
  
  private func calculateRoute() async {
    let kaminariGate = MKPlacemark(coordinate: MapKitSampleApp.kaminariGate)
    let skyTree = MKPlacemark(coordinate: MapKitSampleApp.skyTree)
    
    let request = MKDirections.Request()
    request.source = MKMapItem(placemark: kaminariGate)
    request.destination = MKMapItem(placemark: skyTree)
    request.transportType = .walking
    do {
      let directions = MKDirections(request: request)
      let response = try await directions.calculate()
      self.route = response.routes.first
    } catch {
      print("Error: \(error.localizedDescription)")
    }
  }
}

#Preview {
  NavigationView {
    MapPolylineView()
  }
}
