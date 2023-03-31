//
//  StructProfil.swift
//  HappyPaws
//
//  Created by Apprenant 11 on 24/03/2023.
//

import Foundation

struct Profil: Identifiable {
    var id = UUID()
    var photo: String
    var name: String
    var age: String
    var race: String
    var poids: String
    var taille: String
    let point: String
    let allergie: String
    let points: String
    let problèmes: String
}


var profil = [
    Profil(photo:"Munin" ,name: "Munin", age:"3 ans", race: "American Shorthair", poids: "5kg", taille: "30 cm",point: "•", allergie: "Asthme", points: "•", problèmes: "L'acné du chat"),
Profil(photo:"Natsu" ,name: "Natsu", age: "6 ans", race: "Shiba Inu", poids: "11kg", taille: "40 cm",point: "•", allergie: "Au poulet", points: "•", problèmes: "Dysplasie de la hanche"),
Profil(photo:"Nevada" ,name: "Nevada", age: "4 ans", race: "Savannah", poids: "8kg", taille: "50 cm",point: "•", allergie: "Au boeuf", points: "•", problèmes: "maladie de Lyme")
 ]

/*
Profil(photo: "Pochita", name: "Pochita", age: "100 ans,", race: "Demon,", poids: "20kg", taille: "60cm", point: "•", allergie: "aux autres Démon", points: "•", problèmes: "à déjà reçu une balle")
*/


