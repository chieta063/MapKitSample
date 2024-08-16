//
//  MapKitSampleApp.swift
//  MapKitSample
//
//  Created by 阿部紘明 on 2024/03/29.
//

import SwiftUI
import CoreLocation

@main
struct MapKitSampleApp: App {
  static let tokyoTower = CLLocationCoordinate2D(
    latitude: 35.6585891897143,
    longitude: 139.7454221690418
  )
  
  static let arroundTokyoTower: [CLLocationCoordinate2D] = [
    .init(latitude: 35.65915580788459, longitude: 139.74523977883183),
    .init(latitude: 35.658528169056154, longitude: 139.7447462523814),
    .init(latitude: 35.65807487127885, longitude: 139.74557237274414),
    .init(latitude: 35.65865021032581, longitude: 139.74620537406102),
    .init(latitude: 35.65915580788459, longitude: 139.74523977883183)
  ]
  
  static let skyTree = CLLocationCoordinate2D(
    latitude: 35.71014107692572,
    longitude: 139.81067894020717
  )
  
  static let kaminariGate = CLLocationCoordinate2D(
    latitude: 35.711813216634155,
    longitude: 139.79664454941317
  )
  
  static let kandaMyojin = CLLocationCoordinate2D(
    latitude: 35.7015976094143,
    longitude: 139.76752337883292
  )
  
  static let sumidaPark = CLLocationCoordinate2D(
    latitude: 35.71117511709404,
    longitude: 139.80413507297482
  )
  
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
