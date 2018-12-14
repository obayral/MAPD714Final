//
//  ViewController.swift
//  BMITrack
//
//  Created by Oguz Bayral on 13.12.2018.
//  Student ID: 301029119
//  Copyright © 2018 CentennialCollege. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let BMIResults = segue.destination as? BMIResults else {return}
        var result: Double!
        var doubleWeight = Double(weight.text!)
        var doubleHeight=Double(height.text!)!/100
        result = doubleWeight!/(doubleHeight*doubleHeight)
        BMIResults.score = result
        BMIResults.name = name.text!
    }
    
    @IBAction func clear(_ sender: Any) {
        name.text!=""
        age.text!=""
        gender.text!=""
        weight.text!=""
        height.text!=""
    }
}

