//
//  FinishGoalVC.swift
//  GoalPost
//
//  Created by Benjamin Kimble on 10/21/17.
//  Copyright © 2017 Benjamin Kimble. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    //@IBOutlets
    @IBOutlet weak var pointsTextField: UITextField!
    @IBOutlet weak var createGoalBtn: UIButton!
    
    //Variables
    var goalDescription: String!
    var goalType: GoalType!
    
    //@IBActions
    @IBAction func createGoalBtnPressed(_ sender: Any) {
        if pointsTextField.text != "" {
            self.save { complete in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    //My Functions
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    func save(completion: CompletionHandlerBool ) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalAmount = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            completion(true)
        } catch {
            debugPrint("Could Not Save \(error.localizedDescription)")
            completion(false)
        }
    }
    
    //System Functions and Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
    }

}
