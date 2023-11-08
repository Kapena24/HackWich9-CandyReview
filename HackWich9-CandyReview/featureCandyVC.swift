//
//  featureCandyVC.swift
//  HackWich9-CandyReview
//
//  Created by Kapena Kaaihue on 11/7/23.
//

import UIKit

class featuredCandyVC: UIViewController{
    
    
    @IBOutlet weak var reviewerLabel: UILabel!
    @IBOutlet weak var candyReview: UILabel!
    @IBOutlet weak var candyReviewed: UILabel!
    @IBOutlet weak var candyRating: UILabel!
    @IBOutlet weak var reviewText: UITextView!
    
    var reviewTextView =  "These gummies hit the sweet spot. They are soft and chewy, just as you'd expect from a quality gummy candy. Plus, the attention to detail on the skull shapes is remarkable. They're so cute that you almost feel bad for devouring them – but trust me, it's worth it."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reviewText.text = reviewTextView
        
        candyReviewed.text = "Fruidles Gummy Skulls Halloween Candy"
        
        candyRating.text = "Rating: ★★★★★"
        
        
        candyReview.text = "Featured Halloween candy"
        
        reviewerLabel.text = "Candy Reviewer: Kapena Kaaihue"
        
    }
}
