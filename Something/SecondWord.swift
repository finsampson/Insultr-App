import Foundation

class SecondWord {

    var words = [String]()
    
    init(){
        words = ["idiot.", "loser.", "lass.", "priest.", "instant meal.", "wet flannel.", "meal deal.", "cum sucking spork", "slagtard", "cretin.", "trumptastic dickweed.", "clash of clans playing virgin.", "Fortnite dancer", "Conservative", "Capitalist","Communist Fuckwad.", "UKIP Cunt.", "Nice Fella.", "Nigga", "Dancing Queer.", "Dancing Queen.", "Chav.", "Spacktard", "Bin Weevil.", "Son of a slag.", "Thot.", "Chunder Dragon.", "Cunt", "Yeet.", "Pedophille.", "Interger", "Array of string.", "OOF.", "Rapist", "Kiddy Fiddler.", "Christa."]
    }
    
    func randomWord() -> String {
        return words.randomElement()!
    }



}
