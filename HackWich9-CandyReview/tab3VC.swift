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
        
    var categoryTwoImagesData = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        if let path = Bundle.main.path(forResource: "PropertyList", ofType: "plist"),
           let dict = NSDictionary(contentsOfFile: path),
           let categoryTwoImages = dict.object(forKey: "CategoryTwoImages") as? [String] {
           
            categoryTwoImagesData = categoryTwoImages
        }

        //tableView.dataSource = self
        //tableView.delegate = self
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
