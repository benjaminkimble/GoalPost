//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Benjamin Kimble on 10/21/17.
//  Copyright © 2017 Benjamin Kimble. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    //@IBOutlets
    @IBOutlet weak var pointsTextField: UITextField!
    @IBOutlet weak var createGoalBtn: UIButton!
    
    //Variables
    var goalDescription: String!
    var goalType: GoalType!
    
    //@IBActions
    @IBAction func createGoalBtnPressed(_ sender: Any) {
        //pass data into Core Data Goal Model
    }
    
    //My Functions
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    //System Functions and Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
    }

}
