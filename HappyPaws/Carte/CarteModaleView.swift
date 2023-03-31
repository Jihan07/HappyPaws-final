//
//  CarteModaleView.swift
//  HappyPaws
//
//  Created by Apprenant 36 on 22/03/2023.
//

import SwiftUI


struct CarteModaleView: View {
    
    @State var prochainEvenements : [Events] = []
    @Binding var pin :  Events
    var body: some View {
        NavigationStack {
            ZStack(){
                CustomColor.bgRappel.edgesIgnoringSafeArea(.top)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor( CustomColor.fondRappel)
                    .padding()
                VStack(){
                    Image(pin.categorie)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding(20)
                    Text(pin.titre)
                        .font(.title)
                    Spacer()
                    HStack(){
                        VStack(alignment: .leading){
                            Text("Date : \(pin.date)")
                            Text("Heure : \(pin.heure)")
                            Text("Lieu : \(pin.lieu)")
                        }.bold()
                        Spacer()
                    }.padding(10)
                    Spacer()
                    Text("Description :").font(.title2.bold())
                    Text(pin.description)
                        .padding(10)
                    NavigationLink {
                        RappelsView()
                    } label: {
                        Text("Participer")
                            .font(.title2.bold())
                            .foregroundColor(CustomColor.evenement)
                            .frame(width: 300, height: 50)
                            .foregroundColor(.black)
                            .background(CustomColor.bgRappel)
                            .cornerRadius(10)
                        
                    }.simultaneousGesture(TapGesture().onEnded{prochainEvenements.append(pin)}).navigationTitle("Details").navigationBarTitleDisplayMode(.inline)
                    Spacer()
            }.padding()
            }//.navigationTitle(events.titre)
        }
    }
}


struct CarteModaleView_Previews: PreviewProvider {
    static var previews: some View {
        CarteModaleView(pin: .constant(events[0]))
    }
}




