//
//  GoalCell.swift
//  GoalPost
//
//  Created by Benjamin Kimble on 10/20/17.
//  Copyright © 2017 Benjamin Kimble. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    //@IBOutlets
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var progressLbl: UILabel!
    
    //My Functions
    func configureCell(goal: Goal) {
        self.descriptionLbl.text = goal.goalDescription
        self.typeLbl.text = goal.goalType
        self.progressLbl.text = String(describing: goal.goalProgress)
    }
    
    //System Functions and Overrides
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
