import Foundation

struct Emoji {
    var character = ""
    var definition = ""
    var year = 0
    var rating = 0.0
    var category = ""
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
    
    return completeEmojis
}
