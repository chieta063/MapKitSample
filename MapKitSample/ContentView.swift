//
//  ContentView.swift
//  MapKitSample
//
//  Created by 阿部紘明 on 2024/03/29.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      List {
        Section("Annotations and overlays") {
          NavigationLink("Annotation") {
            AnnotationView()
          }
          NavigationLink("MapCircle") {
            MapCircleView()
          }
          NavigationLink("MapPolygon") {
            MapPolygonView()
          }
          NavigationLink("MapPolyline") {
            MapPolylineView()
          }
          NavigationLink("Marker") {
            MarkerView()
          }
          NavigationLink("UserAnnotation") {
            UserAnnotationView()
          }
        }
        Section("Essentials") {
          NavigationLink("Map") {
            MapView()
          }
          NavigationLink("MapStyle") {
            MapStyleView()
          }
        }
        Section("Exploring at street level") {
          NavigationLink("LookAroundPreview") {
            LookAroundPreviewView()
          }
        }
        Section("Map controls") {
          NavigationLink("MapCompass") {
            MapCompassView()
          }
          NavigationLink("MapLocationCompass") {
            MapLocationCompassView()
          }
          NavigationLink("MapPitchSlider") {
            MapPitchSliderView()
          }
          NavigationLink("MapPitchToggle") {
            MapPitchToggleView()
          }
          NavigationLink("MapScaleView") {
            MapScaleView()
          }
          NavigationLink("MapUserLocationButton") {
            MapUserLocationButtonView()
          }
          NavigationLink("MapZoomStepper") {
            MapZoomStepperView()
          }
        }
        Section("Map customization") {
          NavigationLink("MapCamera") {
            MapCameraView()
          }
          NavigationLink("MapCameraBounds") {
            MapCameraBoundsView()
          }
          NavigationLink("MapCameraPosition") {
            MapCameraPositionView()
          }
          NavigationLink("MapCameraContext") {
            MapCameraUpdateContextView()
          }
          NavigationLink("MapCameraFrequency") {
            MapCameraUpdateFrequencyView()
          }
        }
        Section("Map features") {
          NavigationLink("MapFeature") {
            MapFeatureView()
          }
        }
        Section("PointsOfInterest") {
          NavigationLink("PointOfInterestCategory") {
            PointOfInterestCategoriesView()
          }
        }
      }
    }
    }
}

#Preview {
  ContentView()
}
