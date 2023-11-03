//
//  ViewController.swift
//  HackWich9-CandyReview
//
//  Created by Kapena Kaaihue on 11/2/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
  
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
}

