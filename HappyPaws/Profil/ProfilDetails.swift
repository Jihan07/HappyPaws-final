//
//  ProfilDetails.swift
//  HappyPaws
//
//  Created by Apprenant 11 on 24/03/2023.
//

import SwiftUI

struct ProfilDetails: View {
    var aprofil : Profil
    var body: some View {
            NavigationStack {
                        ZStack(){
                            CustomColor.bgProfil
                                VStack (){
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 10)
                                            .frame(width: 170,height: 170)
                                            .foregroundColor(CustomColor.fondProfil)
                                            .ignoresSafeArea()
                                        RoundedRectangle(cornerRadius: 20)
                                            .frame(width: 150,height: 150)
                                            .foregroundColor(CustomColor.bgProfil)
                                        Image(aprofil.photo).resizable()
                                            .frame(width: 130, height: 130)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                        }
                                        Text(aprofil.name)
                                            .font( .title)
                                            .fontWeight(.black)
                                            .navigationTitle(aprofil.name)
                                            .foregroundColor(CustomColor.evenement)
                                    Text("Informations :")
                                        .fontWeight(.medium)
                                        .foregroundColor(CustomColor.evenement)
                                        .font(.title2)
                                        .padding()
                                        HStack(){
                                            VStack(alignment: .leading){
                                                HStack(){
                                                    Text("Race:").bold()
                                                    Spacer()
                                                    Text(aprofil.race)
                                                }
                                                HStack(){
                                                    Text("Age:").bold()
                                                    Spacer()
                                                    Text(aprofil.age)
                                                }
                                                HStack(){
                                                    Text("Poids:").bold()
                                                    Spacer()
                                                    Text(aprofil.poids)
                                                }
                                                HStack(){
                                                    Text("Taille:").bold()
                                                    Spacer()
                                                    Text(aprofil.taille)
                                                }
                                            }
                                            Spacer()
                                        }
                                    
                                    
                                        Text("Allergies et problèmes de santé :")
                                            .fontWeight(.medium)
                                            .foregroundColor(CustomColor.evenement)
                                            .font(.title2)
                                            .padding()
                                    HStack(){
                                        VStack(alignment: .leading){
                                            Text(aprofil.allergie)
                                            Text(aprofil.problèmes)
                                        }
                                        Spacer()
                                    }
                                        
                            }
                            .padding()
                            .toolbarBackground( CustomColor.bgProfil, for: .navigationBar)
                            .toolbarBackground(.visible, for: .navigationBar)
                            .toolbar {ToolbarItem(placement: .navigationBarTrailing){
                                EditButton()
                            } }
                        }
                    }
                }
            
            }

struct ProfilDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProfilDetails(aprofil:Profil(photo:"Munin" ,name: "Munin", age:"3 ans ", race: "American Shorthair", poids: "5kg", taille: "30 cm",point: "•", allergie: " Asthme", points: "•", problèmes: " L'acné du chat"))
        }
}

