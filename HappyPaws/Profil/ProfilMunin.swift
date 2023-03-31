//
//  ProfilMunin.swift
//  HappyPaws
//
//  Created by Apprenant 11 on 22/03/2023.
//
import SwiftUI

struct ProfilView: View {
    var body: some View {
        NavigationStack {
            ZStack(){
                CustomColor.bgProfil
                    .edgesIgnoringSafeArea(.top)
                VStack(){
                    ScrollView(.vertical){
                        VStack(alignment: .leading){
                            ForEach(profil) {profil in
                                NavigationLink {
                                    ProfilDetails(aprofil:profil)
                                } label: {
                                    ZStack(alignment: .leading){
                                        ZStack{
                                            RoundedRectangle(cornerRadius: 20)
                                                .frame(width: 250, height: 100)
                                                .foregroundColor(CustomColor.fondProfil)
                                            
                                            HStack(){
                                                Image(profil.photo).resizable()
                                                    .frame(width: 100, height: 90)
                                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                                    .padding()
                                                Text(profil.name)
                                                    .fontWeight(.medium)
                                                    .foregroundColor(CustomColor.evenement)
                                                    .font(.title2)
                                                    .padding()
                                            }
                                        }
                                    }
                                    .padding()                      }
                            }
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading){
                        Button{
                            //
                        }label:{
                            Text("Modifier")
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing){
                        NavigationLink {
                            NouveauProfilView()
                        } label: {
                            Label("Ajouter un profil", systemImage: "plus.circle")
                        }
                    }
                }
            }.navigationTitle("Profil").navigationBarTitleDisplayMode(.inline)
        }
    }
}
       


struct ProfilView_Previews: PreviewProvider {
static var previews: some View {  ProfilView()
            }
        }




