//
//  Alimentation.swift
//  HappyPaws
//
//  Created by Apprenant 36 on 22/03/2023.
//

import SwiftUI

struct AlimentationView: View {
    @State var dataprofil: Profil
    
    var newDataprofil = Profil(photo:"Munin" ,name: "Munin", age:",3 ans", race: "chat", poids: ",5kg", taille: ",30 cm",point: "•", allergie: "Asthme", points: "•", problèmes: "L'acné du chat")
    var ProfilBase =  Profil(photo:"Natsu" ,name: "Natsu", age: ",6 ans", race: "chien", poids: ",11kg", taille: ",40 cm",point: "•", allergie: "Au Poulet", points: "•", problèmes: "Dysplasie de la hanche")
    var newDataprofil2 =  Profil(photo:"Nevada" ,name: "Nevada", age: ",4 ans", race: "chat", poids: ",8kg", taille: ",50 cm",point: "•", allergie: "Au Bouef", points: "•", problèmes: "maladie de Lyme")
    /*
    var newDataprofil3 =  Profil(photo:"Natsu" ,name: "Natsu", age: ",6 ans", race: "chien", poids: ",11kg", taille: ",40 cm",point: "•", allergie: "Au Saumon", points: "•", problèmes: "Dysplasie de la hanche")
     */
    
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack{
            VStack(){
                ZStack{
                    CustomColor.bgModalCarte
                        .edgesIgnoringSafeArea(.top)
                    Button(action: {
                        count += 1
                                        
                        switch count {
                            case 1:
                                dataprofil = ProfilBase
                            case 2:
                                dataprofil = newDataprofil
                            case 3:
                                dataprofil = newDataprofil2
                                count = 0
                            default:
                                break
                            /*
                            case 4:
                                dataprofil = newDataprofil3
                            */
                                
                        } }) {
                            ZStack{
                                RectangleRepeat(width: 150, height: 150)
                                Image(dataprofil.photo)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(25)
                                    .padding(.bottom, 40)
                                Text(dataprofil.name)
                                    .padding(.top, 100)
                                Image(systemName: "arrow.turn.up.left")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .padding(.leading, 150)
                                Image(systemName: "arrow.turn.up.right")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .padding(.trailing, 150)
                            }.padding(.bottom, 500)
                                .padding(.trailing)
                                .foregroundColor(.black)
                        }
                    ZStack{
                        Text("Alimentations")
                            .font(.title)
                            .padding(.bottom, 270)
                            .padding(.trailing, 200)
                            .foregroundColor(CustomColor.buttonModalCarte)
                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(croquettes) { croquette in
                                    if croquette.race == dataprofil.race && dataprofil.allergie.lowercased().contains(croquette.allergie.lowercased()) == croquette.allergie.lowercased().contains(dataprofil.allergie.lowercased())
                                    {
                                        
                                        if let photo = croquette.photoAlimentation {
                                            Image(photo)
                                                .resizable()
                                                .frame(width: 125, height: 125)
                                        }
                                    }
                                }
                            }
                        }.background(CustomColor.fondRappel)
                            .cornerRadius(25)
                            .padding(.bottom, 80)
                            .padding()
                    }
                    Text("Soins")
                        .font(.title)
                        .padding(.top, 150)
                        .padding(.trailing, 290)
                        .foregroundColor(CustomColor.buttonModalCarte)
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            ForEach(soins) { soin in
                                if soin.race == dataprofil.race
                                {
                                    Image(soin.photoSoin)
                                        .resizable()
                                        .frame(width: 125, height: 125)
                                }
                            }
                        }
                    }.background(CustomColor.fondRappel)
                        .cornerRadius(25)
                        .padding(.top, 340)
                        .padding()
                }
            }
        }
    }
}

struct AlimentationView_Previews: PreviewProvider {
    static var previews: some View {
        let dataprofil = Profil(photo:"Natsu" ,name: "Natsu", age: ",6 ans", race: "chien", poids: ",11kg", taille: ",40 cm",point: "•", allergie: "au Poulet", points: "•", problèmes: "Dysplasie de la hanche")
        AlimentationView(dataprofil: dataprofil)
    }
}

struct RectangleRepeat: View {
    var width: CGFloat
    var height: CGFloat
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: width, height: height)
            .foregroundColor(CustomColor.fondRappel)
    }
}
