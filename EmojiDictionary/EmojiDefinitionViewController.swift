//
//  EmojiDefinitionViewController.swift
//  EmojiDictionary
//
//  Created by George Higbie on 1/10/21.
//

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
