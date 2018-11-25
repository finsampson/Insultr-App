import Foundation

class WordManager {
    
    var words = [String]()

    
    init() {
        words = ["an idiotic", "a helpless", "a dumb", "a stupid", "an utter", "an absolute", "a pointless", "a smelly", "a bloomin'"]
    }
    
    
    func randomWord() -> String {
        return words.randomElement()!
    }
    
    
}
