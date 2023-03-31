//
//  NouveauProfilView.swift
//  HappyPaws
//
//  Created by Apprenant 36 on 29/03/2023.
//

import SwiftUI

struct NouveauProfilView: View {
    
    @State private var nom: String = ""
    @State private var animal: String = ""
    @State private var race: String = ""
    @State private var age: String = ""
    @State private var taille: String = ""
    @State private var poids: String = ""
    
    var body: some View {
        ZStack(){
            CustomColor.bgProfil.edgesIgnoringSafeArea(.top)
            VStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 150, height: 150)
                    .foregroundColor(CustomColor.fondProfil)
                TextField("Nom", text: $nom)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .background(CustomColor.messageSortant)
                    .padding()
                TextField("Animal", text: $animal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Race", text: $race)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Age", text: $age)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Taille", text: $taille)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Poids", text: $poids)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                Button {
                    //
                } label: {
                    Text("Ajouter")
                        .foregroundColor(CustomColor.evenement)
                        .font(.title2)
                        .padding(.horizontal)
                        .padding()
                        .background(CustomColor.fondProfil)
                        .cornerRadius(10)
                }
            }
        }.navigationTitle("Ajouter un profil")
    }
}

struct NouveauProfilView_Previews: PreviewProvider {
    static var previews: some View {
        NouveauProfilView()
    }
}
