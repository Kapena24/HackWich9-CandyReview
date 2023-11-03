//
//  ViewController.swift
//  HackWich9-CandyReview
//
//  Created by Kapena Kaaihue on 11/2/23.
//

import UIKit

class ViewController: UIViewController{
  
    var candyArray  = ["Reese's PeanutButter Cup", "Kit Kat", "Butterfingers", "Chotolate & Nut M & M"]
    var ratingArray = ["⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]
    
    var categoryOneImagesData = [String]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
            }
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return candyArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! secondDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = categoryOneImagesData[imageIndex!]
        }
    }
}

