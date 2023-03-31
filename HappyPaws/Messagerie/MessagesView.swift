
import SwiftUI

struct MessagesView: View {
    @State private var messageText = ""
    @State var messages: [String] = []
    var animal : Animal
    
    var body: some View {
        
        ZStack{
            
            CustomColor.bgRappel
            VStack {
              ScrollView {
                    ForEach(messages, id: \.self) {message in
                        if message.contains("[USER]") {
                            let newMessage = message.replacingOccurrences(of: "[USER]", with: "")
                            
                            HStack {
                                Spacer()
                                Text(newMessage)
                                    .padding()
                                    .foregroundColor(.black)
                                    .background(CustomColor.messageSortant)
                                    .cornerRadius(20)
                                    .padding(.horizontal, 16)
                                    .padding(.bottom, 10)
                                
                            }
                        } else {
                            HStack {
                                
                                Image(animal.pictureAnimal)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .clipShape(Circle())
                                    .padding()
                                
                                Text(message)
                                    .padding()
                                    .foregroundColor(.black)
                                    .background(CustomColor.fondMessage)
                                    .cornerRadius(20)
                                Spacer()
                            }
                        }
                        
                    }
                }
                
                HStack {
                    TextField("Tapez votre message", text:$messageText)
                        .padding()
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(30)
                        .onSubmit {
                            sendMessage(message: messageText)
                        }
                    
                    Button {
                        sendMessage(message: messageText)
                    } label: {
                        Image(systemName: "paperplane.fill")
                    }
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                    .padding(.horizontal, 10)
                    
                }
                    .padding()
                
          }
            .navigationTitle(animal.nameAnimal)
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbarBackground( CustomColor.bgRappel, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
        
    }
    func sendMessage(message: String) {
        withAnimation {
            messages.append("[USER]" + message)
            self.messageText = ""
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation{
                messages.append(getAnimalResponse(message: message))
         
            }
        }
    }
}
struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MessagesView(animal: Animal(pictureAnimal: "cat", nameAnimal:"Pumpkin"))
        }
    }
}
