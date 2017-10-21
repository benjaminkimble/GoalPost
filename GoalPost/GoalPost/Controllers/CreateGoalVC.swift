//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Benjamin Kimble on 10/20/17.
//  Copyright © 2017 Benjamin Kimble. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    //@IBOutlets
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    //@IBActions
    @IBAction func nextBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func shortTermBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //My Functions
    
    
    //System Functions and Overrides
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
