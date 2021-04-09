//
//  MapView.swift
//  AfricaApp-SwiftUI
//
//  Created by Rami Ounifi on 24/1/2021.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Proprties
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapzoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapzoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParcLocation] = Bundle.main.decode("locations.json")
    // MARK: - Body
    var body: some View {
        // MARK: - n°1 basic map
       // Map(coordinateRegion: $region)
        // MARK: - N°2 advancedMap
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
            item in
            // option (A) PIN: old style - always static
            // MapPin(coordinate: item.location, tint: .accentColor )
            // option (B) MARKER: new style - always static
           // MapMarker(coordinate: item.location, tint: .accentColor)
            // option (C): custom annotation - it could be interactive
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            } //: Annotation
            
            // option (D): Custom advanced annotation (it could be interactive)
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
            
        })//: MAP
        .overlay(
            HStack (alignment: .center, spacing: 12){
                Image("compass")
                .resizable()
                .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Lattitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    Divider()
                    
                    HStack {
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            } // : HStack
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            )
            .padding()
            , alignment: .top
        )
    }
}
// MARK: - Preview
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
