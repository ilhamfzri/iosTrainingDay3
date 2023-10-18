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
    @IBOutlet weak var salaryValueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setValue(nameValue:String, ageValue:String, salaryValue: String){
        nameValueLabel.text = nameValue
        ageValueLabel.text = ageValue
        salaryValueLabel.text = salaryValue
    }
    
}
