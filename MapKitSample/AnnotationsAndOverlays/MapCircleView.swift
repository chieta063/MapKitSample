//
//  MapCircleView.swift
//  MapKitSample
//
//  Created by 阿部紘明 on 2024/03/29.
//

import SwiftUI
import MapKit

struct MapCircleView: View {
  private let point = MapKitSampleApp.tokyoTower
  @State private var cameraPosition = MapCameraPosition.region(
    .init(center: MapKitSampleApp.tokyoTower, span: .init())
  )
  
  var body: some View {
    Map(position: $cameraPosition) {
      MapCircle(center: point, radius: 5)
        .foregroundStyle(Color.blue.opacity(0.3))
        .stroke(Color.blue, lineWidth: 2)
        .mapOverlayLevel(level: .aboveRoads)
    }
  }
}

#Preview {
  MapCircleView()
}
