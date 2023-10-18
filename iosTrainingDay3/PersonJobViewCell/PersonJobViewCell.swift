//
//  PersonJobViewCell.swift
//  iosTrainingDay3
//
//  Created by ITBCA on 18/10/23.
//

import UIKit

class PersonJobViewCell: UITableViewCell {

    @IBOutlet weak var nameValueLabel: UILabel!
    @IBOutlet weak var ageValueLabel: UILabel!
    @IBOutlet weak var jobValueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setValue(nameValue:String, ageValue:String, jobValue: String){
        nameValueLabel.text = nameValue
        ageValueLabel.text = ageValue
        jobValueLabel.text = jobValue
    }
    
}
