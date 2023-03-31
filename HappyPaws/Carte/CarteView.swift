//
//  CarteView.swift
//  HappyPaws
//
//  Created by Apprenant 36 on 22/03/2023.
//

import SwiftUI
import MapKit

struct CarteView: View {
    
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.60458979505749, longitude: 1.4451212099355741), span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
    
    @State var selectedLocation = events[0]
    
    var body: some View {
        NavigationStack{
            Map(coordinateRegion: $region, annotationItems: events, annotationContent: {
                location in
                MapAnnotation(coordinate: location.coordinate) {
                    NavigationLink{
                        CarteModaleView(pin: $selectedLocation)
                    } label: {
                        Image(location.categorie)
                            .resizable()
                            .frame(width:50, height: 50)
                            .foregroundColor(.red)
                    }.simultaneousGesture(TapGesture().onEnded{selectedLocation = location}).navigationTitle("Carte").navigationBarTitleDisplayMode(.inline)
                }
            }).edgesIgnoringSafeArea(.top)
        }
    }
}
        
struct CarteView_Previews: PreviewProvider {
    static var previews: some View {
        CarteView()
    }
}


