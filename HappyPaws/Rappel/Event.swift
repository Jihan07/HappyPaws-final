//
//  Event.swift
//  HappyPaws
//
//  Created by Apprenant 29 on 22/03/2023.
//

import Foundation
import MapKit

struct Events: Identifiable {
    var id = UUID()
    var titre: String
    var categorie: String
    var date: String
    var heure: String
    var lieu: String
    var description: String 
    var latitude: Double = 0.0 //La premiere coordonee de la position
    var longitude: Double = 0.0 //La seconde coordonee de la position
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

var events = [
    Events(titre: "Événement", categorie: "iconeEvenement", date: "13/04/23", heure: "9h", lieu: "Place du capitole", description: "Petit evenement", latitude: 43.60429538440082, longitude: 1.4433277066267738),
    Events(titre: "PetSitter", categorie: "iconePetsiter", date: "13/04/23", heure: "16h", lieu: "Jardin Pierre Goudouli", description: "Pumpkin cherche un ami",latitude: 43.60489683866073, longitude: 1.4472405462839297),
    Events(titre: "Véterinaire", categorie: "iconeVeterinaire", date: "13/04/23", heure: "8h", lieu: "Veterinaire Jacobin Toulouse", description: "Veterinaire proche du capitole", latitude: 43.604785513681826, longitude: 1.4423637217028362)
    
]




    








 
