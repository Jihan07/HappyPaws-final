//
//  RappelsView.swift
//  HappyPaws
//
//  Created by Apprenant 36 on 22/03/2023.
//

import SwiftUI

struct RappelsView: View {
    //@Binding var nouvelEvenement : [Events] = []
    var body: some View {
        NavigationStack {
            ZStack(){
                CustomColor.bgRappel.edgesIgnoringSafeArea(.top)
                VStack(){
                    ScrollView(.vertical){
                        VStack(){
                            ForEach(events) {event in
                                NavigationLink {
                                    EventDetail(unEvent: event)
                                } label: {
                                    ZStack(){
                                        RoundedRectangle(cornerRadius: 10)
                                            .padding(-10)
                                            .foregroundColor(CustomColor.fondRappel)
                                        HStack{
                                            Image(event.categorie)
                                                .resizable()
                                                .frame(width: 70,height:70)
                                                .padding(15)
                                                .clipShape(Circle())
                                            VStack(alignment: .leading){
                                                Text(event.titre)
                                                    .font(.title2.bold())
                                                    .foregroundColor(CustomColor.evenement)
                                                    .multilineTextAlignment(.leading)
                                                    .frame(width: 250)
                                                Text(event.date)
                                                    .foregroundColor(.black)
                                                    .opacity(0.7)
                                                Text(event.heure)
                                                    .foregroundColor(.black)
                                                    .opacity(0.7)
                                                Text(event.lieu)
                                                    .foregroundColor(.black)
                                                    .opacity(0.7)
                                            }.bold()
                                            Spacer()
                                        }
                                    }
                                }.padding()
                            }
                        }
                    }.navigationTitle("À venir")
                }
            }
        }
    }
}


struct RappelsView_Previews: PreviewProvider {
    static var previews: some View {
        RappelsView()
    }
}
