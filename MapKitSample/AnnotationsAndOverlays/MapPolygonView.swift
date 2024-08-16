//
//  MapPolygonView.swift
//  MapKitSample
//
//  Created by 阿部紘明 on 2024/03/29.
//

import SwiftUI
import MapKit

struct MapPolygonView: View {
  @State private var cameraPosition = MapCameraPosition.region(
    .init(
      center: MapKitSampleApp.tokyoTower,
      span: .init(latitudeDelta: 0.002, longitudeDelta: 0.002)
    )
  )
  var body: some View {
    Map(position: $cameraPosition) {
      MapPolygon(coordinates: MapKitSampleApp.arroundTokyoTower)
        .foregroundStyle(Color.blue.opacity(0.3))
        .stroke(Color.blue, lineWidth: 2)
    }
  }
}

#Preview {
  MapPolygonView()
}
