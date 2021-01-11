import Foundation

class Emoji {
    var character = ""
    var definition = ""
    var year = 0
    var rating = 0.0
    var category = ""
    
    init(character: String, definition: String, year: Int, rating: Double, category: String){
        
        self.character = character
        self.definition = definition
        self.year = year
        self.rating = rating
        self.category = category
        
    }
}

let emojis = ["⛪️", "🕍", "🐪", "😼", "🐃", "🦀", "🐛", "🐈", "🐈‍⬛", "🐄", "🐂"]

func getEmojis(emojis:[String]) -> [Emoji] {
    var completeEmojis: [Emoji] = []
    emojis.forEach { emoji in
        let emoji = Emoji(
            character: emoji,
            definition: emoji.unicodeScalars.first!.properties.name!.capitalized,
            year: 1999,
            rating: 4.0,
            category: emoji.unicodeScalars.first!.properties.name!.capitalized
            )
        completeEmojis.append(emoji)
    }
    print("Count: \(completeEmojis.count)")
    
    return completeEmojis
}
