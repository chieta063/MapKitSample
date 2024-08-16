//
//  MapView.swift
//  MapKitSample
//
//  Created by 阿部紘明 on 2024/03/29.
//

import SwiftUI
import MapKit

struct MapView: View {
  @State private var position: MapCameraPosition = .camera(.init(centerCoordinate: .tokyoStation, distance: 10000))
  // TODO: モーダルサンプル集作ったら消す
  @State private var isShownModal: Bool = true
  var body: some View {
    Map(position: $position) {}
    // TODO: モーダルサンプル集作ったら消す
    .sheet(isPresented: $isShownModal) {
      Text("Hoge")
        .presentationDetents([.height(100)])
        .presentationBackgroundInteraction(.enabled(upThrough: .height(100)))
        .presentationDragIndicator(.visible)
    }
  }
}
  
#Preview {
  MapView()
}
