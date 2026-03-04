//
//  ViewController.swift
//  EliKrouseAssign3
//
//  Created by Krouse, William E. on 2/24/26.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var landingPageReviewLabel: UILabel!
    
    @IBOutlet weak var reviewPageReviewLabel: UILabel!
    
    @IBOutlet weak var ReviewButton: UIButton!
    
    var stars: Int? = nil
    
    @IBAction func postReviewButton(_ sender: Any)
    {
        guard let stars = stars else
        {
            print("stars may be nil")
            reviewPageReviewLabel.text = "please select a star 1-5"
            return
        }
        reviewPageReviewLabel.text = "\(stars)  / 5 Stars"
        landingPageReviewLabel.text = "\(stars) / 5 Stars"
    }
    
    
    @IBOutlet weak var starOneButton: UIButton!
    
    
    @IBOutlet weak var starTwoButton: UIButton!
    
    
    @IBOutlet weak var starThreeButton: UIButton!
    
    
    @IBOutlet weak var starFourButton: UIButton!
    
    
    @IBOutlet weak var starFiveButton: UIButton!
    
    
    
    var starButtons: [UIButton] = []
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
            starButtons = [
                starOneButton,
                starTwoButton,
                starThreeButton,
                starFourButton,
                starFiveButton
            ]
            
            self.updateStars(0)
        
        
    }
    
    
    @IBAction func starTapped(_ sender: UIButton)
        {
            guard let index = starButtons.firstIndex(of: sender) else
            {
                return
            }
            
            stars = index + 1
            
            if let stars = stars
            {
                updateStars(stars)
            }
        }
        
        func updateStars(_ rating: Int)
        {
            for(index, button) in starButtons.enumerated()
            {
                
                if(index < rating)
                {
                    button.setImage(UIImage(systemName: "star.fill"), for: .normal)
                }
                else
                {
                    button.setImage(UIImage(systemName: "star"), for: .normal)
                }
            }
        }
}

