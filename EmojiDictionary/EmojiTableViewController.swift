
import UIKit

class EmojiTableViewController: UITableViewController {
    
    let emojis = getEmojis(emojis: ["⛪️", "🕍", "🐪", "😼", "🐃", "🦀", "🐛", "🐈", "🐈‍⬛", "🐄", "🐂"])

    override func viewDidLoad() {
        super.viewDidLoad()


    }

//How many rows?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }

//What goes in each row?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = "\(emoji.character)  -  \(emoji.definition)"

        return cell
  
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "Definition", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let definitionVC = segue.destination as? EmojiDefinitionViewController{
            if let selectedEmoji = sender as? Emoji{
                definitionVC.emoji = selectedEmoji
            }
        }
    }


}
