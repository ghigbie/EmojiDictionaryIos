//
//  EmojiTableViewController.swift
//  EmojiDictionary
//
//  Created by George Higbie on 1/9/21.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

//How many rows?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 35
    }

//What goes in each row?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = "Moo"

        return cell
  
    }


}
