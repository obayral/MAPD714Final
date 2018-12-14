//
//  BMIResults.swift
//  BMITrack
//
//  Created by Oguz Bayral on 13.12.2018.
//  Copyright © 2018 CentennialCollege. All rights reserved.
//

import UIKit

class BMIResults: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bmiScore: UILabel!
    @IBOutlet weak var category: UILabel!
    var name: String!
    var score : Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        bmiScore.text = String(score)
        setCategory()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setCategory(){
        if score < 16 {
            category.text! = "Severe Thinness"
        }
        else if score < 17 && score >= 16 {
            category.text! = "Moderate Thinness"
        }
        else if score < 18.5 && score >= 17 {
            category.text! = "Mild Thinness"
        }
        else if score < 25 && score >= 18.5 {
            category.text! = "Normal"
        }
        else if score < 30 && score >= 25 {
            category.text! = "Overweight"
        }
        else if score < 35 && score >= 30 {
            category.text! = "Obese Class I"
        }
        else if score < 40 && score >= 35 {
            category.text! = "Obese Class II"
        }
        else if  score >= 40 {
            category.text! = "Obese Class III"
        }
    }
}
