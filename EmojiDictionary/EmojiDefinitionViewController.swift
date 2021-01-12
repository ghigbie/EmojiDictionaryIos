import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet weak var blowUpEmojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    var emoji = Emoji(character: "🐡", definition: "Puffer Fish")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        blowUpEmojiLabel.text = emoji.character
        emojiDefinitionLabel.text = emoji.definition
    }


}
