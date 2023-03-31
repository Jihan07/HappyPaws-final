//
//  EventDetail.swift
//  HappyPaws
//
//  Created by Apprenant 29 on 23/03/2023.
//

import SwiftUI

struct EventDetail: View {
    var unEvent : Events
    var body: some View {
        
        NavigationStack {
            ZStack(){
                CustomColor.bgRappel.edgesIgnoringSafeArea(.top)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor( CustomColor.fondRappel)
                    .padding()
                VStack(){
                    Image(unEvent.categorie)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(20)
                    Text(unEvent.titre)
                        .font(.title)
                    Spacer()
                    HStack(){
                        VStack(alignment: .leading){
                            Text("Date : \(unEvent.date)")
                            Text("Heure : \(unEvent.heure)")
                            Text("Lieu : \(unEvent.lieu)")
                        }.bold()
                        Spacer()
                    }.padding(10)
                    Spacer()
                    Text("Description :").font(.title2.bold())
                    Text(unEvent.description)
                        .padding(10)
                    Spacer()
            }.padding()
            }//.navigationTitle(events.titre)
        }
    }
}
    
struct EventDetail_Previews: PreviewProvider {
    static var previews: some View {
        EventDetail(unEvent: Events(titre: "Événement", categorie: "iconeEvenement", date: "01/04/2024",heure: "14H", lieu: "Au Parc du Capitol",description: "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum."))
    }
}

