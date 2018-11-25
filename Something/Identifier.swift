import Foundation

class IdentifierWord {
    //class name
    
    var words = [String]()

    init(){
        words = ["You are", "Your mum is", "Your dad is", "Your dog is", "Your local priest is", "Your doctor is", "Your dentist is", "Your cat is", "Your lecturer is", "Trump is", "Theresa May is"]
        // "identity words"
    }
    
    func randomWord() -> String {
        return words.randomElement()!
        //returns the result so they dont just add one to another and use up memory.
    }
    
    
    
}
