//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Benjamin Kimble on 10/20/17.
//  Copyright © 2017 Benjamin Kimble. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    //@IBOutlets
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    //Variables
    var goalType: GoalType = .shortTerm
    
    //@IBActions
    @IBAction func nextBtnPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text.lowercased() != "what is your goal" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else { return }
            finishGoalVC.initData(description: goalTextView.text, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    }
    
    @IBAction func shortTermBtnPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
    }
    
    @IBAction func longTermBtnPressed(_ sender: Any) {
        goalType = .longTerm
        shortTermBtn.setDeselectedColor()
        longTermBtn.setSelectedColor()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    //My Functions
    
    
    //System Functions and Overrides
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        longTermBtn.setDeselectedColor()
        goalTextView.delegate = self
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
