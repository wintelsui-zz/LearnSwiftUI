//
//  LocationView.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/13.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import SwiftUI
import MapKit
import CoreLocation

struct LocationView : UIViewRepresentable {
    
    let locationManager = CLLocationManager()
    
    func makeUIView(context: Context) -> MKMapView {
        let view = MKMapView(frame: .zero)
        view.showsCompass = true
        view.showsScale = true
        view.showsUserLocation = true
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 10.0
        locationManager.startUpdatingLocation()
        
        return view
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        
        let coordinate = view.userLocation.coordinate
        
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: locationManager.location?.coordinate ?? coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

#if DEBUG
struct LocationView_Previews : PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
#endif
