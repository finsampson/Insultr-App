import Foundation

class SecondWord {

    var words = [String]()
    
    init(){
        words = ["idiot.", "loser.", "lass.", "priest.", "instant meal.", "wet flannel.", "meal deal."]
    }
    
    func randomWord() -> String {
        return words.randomElement()!
    }



}
