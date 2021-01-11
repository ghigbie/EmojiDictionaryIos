import UIKit

class EmojiDefinitionViewController: UIViewController {

    @IBOutlet weak var blowUpEmojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    var emoji = "🐡"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        blowUpEmojiLabel.text = emoji
        emojiDefinitionLabel.text = emoji.unicodeScalars.first!.properties.name!.capitalized
    }


}
