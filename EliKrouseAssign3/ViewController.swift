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
    
    @IBAction func postReviewButton(_ sender: Any)
    {
        guard let stars = stars else
        {
            print("stars may be nil")
            reviewPageReviewLabel.text = "please select a star 1-5"
            return
        }
        reviewPageReviewLabel.text = String(stars) + " / 5 Stars"
        landingPageReviewLabel.text = String(stars) + " / 5 Stars"
    }
    
    
    @IBOutlet weak var starOneButton: UIButton!
    
    
    @IBOutlet weak var starTwoButton: UIButton!
    
    
    @IBOutlet weak var starThreeButton: UIButton!
    
    
    @IBOutlet weak var starFourButton: UIButton!
    
    
    @IBOutlet weak var starFiveButton: UIButton!
    
    
    var stars: Int?
    
    
    
    
    @IBAction func starTapped(_ sender: UIButton)
    {
        switch(sender)
        {
            case starOneButton:
                stars = 1
                
            case starTwoButton:
                stars = 2
            
            case starThreeButton:
                stars = 3
            
            case starFourButton:
                stars = 4
            
            case starFiveButton:
                stars = 5
            
            default:
                return
            
        }
    }
    
    func fillStars(_ toFill: Int)
    {
        starButtonsUnfill()
        
        if(toFill >= 1)
        {
            starOneButton.setImage(UIImage(systemName: "star.fill"), for: UIControl.State.normal)
            if(toFill >= 2)
            {
                starTwoButton.setImage(UIImage(systemName: "star.fill"), for: UIControl.State.normal)
                
                if(toFill >= 3)
                {
                    starThreeButton.setImage(UIImage(systemName: "star.fill"), for: UIControl.State.normal)
                    
                    if(toFill >= 4)
                    {
                        starFourButton.setImage(UIImage(systemName: "star.fill"), for: UIControl.State.normal)
                        
                        if(toFill == 5)
                        {
                            starFiveButton.setImage(UIImage(systemName: "star.fill"), for: UIControl.State.normal)
                            
                        }
                    }
                }
            }
        }
    }
    
    func starButtonsUnfill()
    {
        starOneButton.setImage(UIImage(systemName: "star"), for: UIControl.State.normal)
        starTwoButton.setImage(UIImage(systemName: "star"), for: UIControl.State.normal)
        starThreeButton.setImage(UIImage(systemName: "star"), for: UIControl.State.normal)
        starFourButton.setImage(UIImage(systemName: "star"), for: UIControl.State.normal)
        starFiveButton.setImage(UIImage(systemName: "star"), for: UIControl.State.normal)
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //starButtonsUnfill()
        
    }


}

