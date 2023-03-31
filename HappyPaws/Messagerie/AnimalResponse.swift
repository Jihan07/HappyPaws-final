

import Foundation
func getAnimalResponse(message: String) -> String {
    let tempMessage = message.lowercased()
    
    if tempMessage.contains("salut") {
        return "hey!"
    } else if tempMessage.contains("bye") {
        return "A plus tard!"
    } else if  tempMessage.contains("ca va?") {
        return "je vais bien, merci." }
    else if tempMessage.contains("bonjour!") {
        return "coucou!"
        
    } else if tempMessage.contains("veux-tu te promener avec moi aujourd'hui?") {
        return "Oui!On se rejoindra devant le lac?."
    } else if  tempMessage.contains("as tu bien mangé aujourd'hui?") {
        return "oui,merci."
    }
    else if  tempMessage.contains("tu veux venir avec moi au parc?") {
        return "Je préfère rester tranquille et observer les oiseaux par la fenêtre 😌"
    }
    else if  tempMessage.contains("d'accords on se rejoint là-bas") {
        return "😄"
    }
    else if  tempMessage.contains("salut!") {
        return "hey!"
    }
    else if  tempMessage.contains("je vous ramène mon chat") {
        return "très bien, hâte de le rencontrer 😄"
        
    } else if  tempMessage.contains("je vous ramène mon chien") {
        return "très bien, hâte de le rencontrer 😄"}
    else if  tempMessage.contains("hey") {
        return "salut😄"
    }
    

        return "?"
    }
    

