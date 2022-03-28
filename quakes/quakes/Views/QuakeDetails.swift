//
//  QuakeDetails.swift
//  quakes
//
//  Created by user205798 on 3/28/22.
//

import SwiftUI
import Foundation
import UIKit
import MapKit


struct QuakeDetails: View {
    var quakeFeatures: Features
    var body: some View {
        ZStack(alignment: .top) {
            MapView(quakeFeatures: quakeFeatures)
                .edgesIgnoringSafeArea(.all)
            VStack(alignment:.center, spacing: 6) {
                Text(String(quakeFeatures.properties.mag))
                    .font(.largeTitle)
                Text(quakeFeatures.properties.place)
            }.clipShape(Rectangle())
                .padding(.all,10)
                .frame(width: nil, height: nil)
                .background(.green)
                .shadow(radius: 9)
                .cornerRadius(9)
                .opacity(0.8)
        }
    }
}

struct MapView: UIViewRepresentable {
    var quakeFeatures: Features
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let annotation = MKPointAnnotation()
        
        let coordinate = CLLocationCoordinate2D(latitude: quakeFeatures.geometry.coordinates[1], longitude: quakeFeatures.geometry.coordinates[0])
        
        let span = MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
        
        annotation.coordinate = coordinate
        annotation.title = quakeFeatures.properties.place
        annotation.subtitle = "Magnitude: \(quakeFeatures.properties.mag)"
        
        uiView.addAnnotation(annotation)
    }
    
}

