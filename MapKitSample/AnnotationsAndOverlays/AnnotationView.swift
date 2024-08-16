//
//  AnnotationView.swift
//  MapKitSample
//
//  Created by 阿部紘明 on 2024/03/29.
//

import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
  static let tokyoStation = CLLocationCoordinate2D(latitude: 35.681271031625556, longitude: 139.76710334029735)
}

struct AnnotationView: View {
  enum TitleVisibility: String, CaseIterable, Identifiable {
    case hidden
    case visible
    case automatic
    
    var id: Self { self }
    
    var visibility: Visibility {
      switch self {
      case .hidden:
          .hidden
      case .visible:
          .visible
      case .automatic:
          .automatic
      }
    }
  }
  
  @State private var point = CLLocationCoordinate2D(latitude: 35.681271031625556, longitude: 139.76710334029735)
  @State private var cameraPosition = MapCameraPosition.region(
    .init(center: MapKitSampleApp.tokyoTower, span: .init())
  )
  @State private var titleVisibility = TitleVisibility.automatic
  @State private var subTitleVisibility = TitleVisibility.automatic
  
  var body: some View {
    Map() {
      Annotation(coordinate: .tokyoStation, anchor: UnitPoint(x: 2, y: -2)) {
        Image(systemName: "tram.fill")
          .foregroundStyle(.yellow)
          .padding(8)
          .background(
            RoundedRectangle(cornerRadius: 8)
              .fill(.blue))
      } label: {
        VStack {
          // title
          Text("東京駅")
            .bold()
            .foregroundColor(.white)
            .padding([.top, .horizontal], 5)
          // subtitle
          Text("メインターミナル")
            .foregroundColor(.white)
            .padding([.bottom, .horizontal], 5)
        }
        .background(Color.black.opacity(0.7))
        .cornerRadius(5)
      }
      .annotationTitles(.hidden)
      .annotationSubtitles(.visible)
    }
  }
}

#Preview {
  AnnotationView()
}
