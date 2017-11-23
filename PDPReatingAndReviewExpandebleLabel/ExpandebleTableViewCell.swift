//
//  ExpandebleTableViewCell.swift
//  PDPReatingAndReviewExpandebleLabel
//
//  Created by Wind3 on 23/11/2017.
//  Copyright © 2017 Wind3. All rights reserved.
//

import UIKit
import ExpandableLabel

class ExpandebleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var expandableLabel:ExpandableLabel!
    @IBOutlet weak var stackView:UIStackView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
