//
//  aboutMe.swift
//  HackWich9-CandyReview
//
//  Created by Kapena Kaaihue on 11/7/23.
//

import UIKit

class aboutMeViewController: UIViewController{
    
    @IBOutlet weak var textViewAboutMe: UITextView!
    
    @IBOutlet weak var candyReviewer: UILabel!
   
    var reviewerName = "Candy Reviewer: Kapena Kaaihue"
    var aboutMeText = "Hello, I'm Kapena Kaaihue, and I'm passionate about coding and gaming. I enjoy creating digital worlds and solving coding challenges. I'm excited to learn and collaborate in this class to take my skills to the next level."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewAboutMe.text = aboutMeText
        candyReviewer.text = reviewerName
    }
}
