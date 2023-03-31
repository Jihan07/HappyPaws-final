//
//  ContentView.swift
//  HappyPaws
//
//  Created by Apprenant 36 on 22/03/2023.
//yasss
import SwiftUI

struct TabBarView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(CustomColor.messageSortant)
    }
    var body: some View {
        TabView{
            RappelsView().tabItem{
                Image("iconeRappels")
                Text("Rappels")
            }
            CarteView().tabItem{
                Image("iconeCarte")
                Text("Carte")
            }
            ProfilView().tabItem{
                Image("iconeProfil")
                Text("Profil")
            }
            AlimentationView(dataprofil: Profil(photo:"Natsu" ,name: "Natsu", age: "6 ans", race: "chien", poids: ",11kg", taille: ",40 cm",point: "•", allergie: " au Poulet", points: "•", problèmes: "Dysplasie de la hanche")).tabItem{
                Image("iconeAlimentation")
                Text("Alimentation")
            }
            MessagerieView().tabItem{
                Image("iconeMessagerie")
                Text("Messagerie")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
} 
