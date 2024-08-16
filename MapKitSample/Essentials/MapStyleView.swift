//
//  MapStyleView.swift
//  MapKitSample
//
//  Created by 阿部紘明 on 2024/03/29.
//

import SwiftUI
import MapKit

struct MapStyleView: View {
  enum MapMode: String, CaseIterable, Identifiable {
    case hybrid
    case imagery
    case standard
    
    var id: Self { self }
  }
  
  init() {
    UISegmentedControl.appearance().backgroundColor = UIColor(Color.white)
    UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.blue)
    UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
  }
  
  @State private var mode: MapMode = .hybrid
  private var currentMapStyle: MapStyle {
    switch mode {
    case .hybrid:
        .hybrid
    case .imagery:
        .imagery
    case .standard:
        .standard
    }
  }
  var body: some View {
    ZStack {
      Map {
        
      }
      .mapStyle(currentMapStyle)
      VStack(content: {
        Picker("MapStyle", selection: $mode, content: {
          ForEach(MapMode.allCases) {mode in
            Text(mode.rawValue).tag(mode)
          }
        })
        .pickerStyle(.segmented)
        .frame(alignment: .top)
        Spacer()
      })
    }
  }
}

#Preview {
  MapStyleView()
}
