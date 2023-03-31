//
//  MapLocation.swift
//  HappyPaws
//
//  Created by Apprenant 36 on 22/03/2023.
//

import Foundation
import MapKit

//Pour l'interface Rappels :
//Un evenement possede une categorie image, un nom, une date,
//un lieu, une description

//Pour l'interface Carte :
//Un evenement possede une categorie image, un nom, une date,
//un lieu, une description, une position

struct Event: Identifiable {
    let id = UUID()
    let categorie: String //La categorie Image
    let name: String //Le nom du lieu
    let date: String //La date
    let heure: String //L'heure
    let description: String //La description
    var latitude: Double = 0.0//La premiere coordonee de la position
    var longitude: Double = 0.0//La seconde coordonee de la position
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    } //La coordonee
}

//Jardin du Capitole : 43.60458979505749, 1.4451212099355741
let mapLocations : [Event] = [
    Event(categorie: "iconeEvenement", name: "Place du capitole", date: "13/04/23", heure: "9h", description: "Petit evenement", latitude: 43.60429538440082, longitude: 1.4433277066267738),
    Event(categorie: "iconePetsiter", name: "Jardin Pierre Goudouli", date: "13/04/23", heure: "16h", description: "Pumpkin cherche un ami",latitude: 43.60489683866073, longitude: 1.4472405462839297),
    Event(categorie: "iconeVeterinaire", name: "Veterinaire Jacobin Toulouse", date: "13/04/23", heure: "9h-12h 14h-19h", description: "Veterinaire proche du capitole",latitude: 43.604785513681826, longitude: 1.4423637217028362)
]




