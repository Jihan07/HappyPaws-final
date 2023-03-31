//
//  AlimentationTable.swift
//  HappyPaws
//
//  Created by Apprenant 03 on 22/03/2023.
//

import Foundation

struct Alimentation : Identifiable {
    var id = UUID()
    var race: String
    var photoAlimentation: String
    var allergie: String
}

var croquettes = [
    Alimentation(race: "chien", photoAlimentation: "royalcanin", allergie: ""),
    Alimentation(race: "chien", photoAlimentation: "pedigree", allergie: "poulet"),
    Alimentation(race: "chien", photoAlimentation: "purina", allergie: ""),
    Alimentation(race: "chien", photoAlimentation: "frolic", allergie: "poulet"),
    Alimentation(race: "chat", photoAlimentation: "yock", allergie: ""),
    Alimentation(race: "chat", photoAlimentation: "royalchat", allergie: ""),
    Alimentation(race: "chat", photoAlimentation: "whiskas", allergie: ""),
    Alimentation(race: "chat", photoAlimentation: "carnilove", allergie: "saumon")
]

struct Soin : Identifiable {
    var id = UUID()
    var photoSoin: String
    var race: String
}

var soins = [
    Soin(photoSoin: "collier-antipuces", race: "chien"),
    Soin(photoSoin: "shampo-anti-pertepoil", race: "chien"),
    Soin(photoSoin: "herbechat", race: "chat"),
    Soin(photoSoin: "spraychat", race: "chat"),
    Soin(photoSoin: "coupe-griffe", race: "chien"),
    Soin(photoSoin: "shampo-anti-demangeaison", race: "chien"),
    Soin(photoSoin: "tapis-education", race: "chien"),
    Soin(photoSoin: "laitchaton", race: "chat"),
    Soin(photoSoin: "pipettechat", race: "chat")
]
