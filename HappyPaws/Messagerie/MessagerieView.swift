import SwiftUI

struct Animal : Identifiable {
    let id = UUID()
    var pictureAnimal: String
    var nameAnimal: String
}
struct MessagerieView: View {
    
    @State var animalsList : [Animal] = [
        Animal(pictureAnimal: "cat", nameAnimal:"Pumpkin"),
        Animal(pictureAnimal: "dog2", nameAnimal: "Elliot"),
        Animal(pictureAnimal: "petsitter", nameAnimal:"PetSitter")
    ]
    @State var searchText = ""
    
    var body: some View {
        NavigationStack{
        
            ZStack{
                CustomColor.bgRappel
//                              .background(CustomColor.bgRappel)
                
                
                VStack{
                    List{
                        ForEach(searchResults) { animalIndex in NavigationLink(destination : MessagesView(animal: animalIndex)) {
                            VStack{
                            
                                HStack{
                               Image(animalIndex.pictureAnimal).resizable().frame(width: 60, height: 60).clipShape(Circle())
                                    Text(animalIndex.nameAnimal).font(.callout.bold())}.padding()
                           }
                        }
                        }
                        .onDelete(perform: deleteMessages)///permet de supprimer une conversation à la fois
                        .listRowBackground(CustomColor.fondMessage)
                    }
                    .searchable(text: $searchText)
                    .navigationTitle("Messages")
                    .scrollContentBackground(.hidden)
                }
                
            }
            .toolbarBackground( CustomColor.bgRappel, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            
            .toolbar {EditButton()
                .foregroundColor(.secondary) }
            ///permet de suprrimer des conversations

        }

    }
    func deleteMessages(at offsets: IndexSet) {
        animalsList.remove(atOffsets: offsets)
    }
    
    var searchResults: [Animal] {
        if searchText.isEmpty {
            return animalsList
        } else {
            return animalsList.filter { $0.nameAnimal.contains(searchText) }
        }
    }
}
 struct MessagerieView_Previews: PreviewProvider {
        static var previews: some View {
            MessagerieView()
        }
    }
