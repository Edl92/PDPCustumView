//
//  ExpandableView.swift
//  PDPReatingAndReviewExpandebleLabel
//
//  Created by Wind3 on 23/11/2017.
//  Copyright © 2017 Wind3. All rights reserved.
//
import UIKit
import Foundation
import ExpandableLabel

class ExpandableViewModel{
    
    let label:ExpandableLabel
    let stackView:UIStackView?
    
    
    init(label:String,maxRowLabel:Int,views:[UIView]?,collapsedText:String){
        
        self.label = ExpandableLabel()
        
        self.label.shouldCollapse = true
        self.label.shouldExpand = true

        self.label.collapsedAttributedLink = NSAttributedString(string: collapsedText)
        
        self.label.text = label
        self.label.numberOfLines = maxRowLabel
        
        if let viewsValue = views  {
            self.stackView = UIStackView()
         _ = viewsValue.map({ view in
                    return self.stackView?.addArrangedSubview(view)
            })
        } else {
            self.stackView = nil
        }
    
    }

    

    
}
