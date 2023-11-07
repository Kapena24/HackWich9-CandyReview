//
//  tab3VC.swift
//  HackWich9-CandyReview
//
//  Created by Kapena Kaaihue on 11/7/23.
//

import UIKit

class tab3VC: UIViewController, UITableViewDataSource, UITableViewDelegate{
   

        var candyArray = ["Gummy bears", "Gummy Worms", "Gummy Rings", "Sour  Gummy"]
        var ratingArray = ["⭐️⭐️⭐️⭐️", "⭐️⭐️", "⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]
    
   @IBOutlet weak var gummyBear: UIImageView!
        @IBOutlet weak var tableView: UITableView!
        override func viewDidLoad() {
            super.viewDidLoad()
            // Register the cell for the table view using a prototype cell from the storyboard
          //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
       // tableView.delegate = self
        // tableView.dataSource = self
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return candyArray.count
        }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = candyArray[indexPath.row]
            cell.detailTextLabel?.text = ratingArray[indexPath.row]
            return cell
    }

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            
        }

}
