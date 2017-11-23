//
//  PDPCustomExpandableView.swift
//  PDPReatingAndReviewExpandebleLabel
//
//  Created by Wind3 on 23/11/2017.
//  Copyright © 2017 Wind3. All rights reserved.
//

import UIKit
import ExpandableLabel

class PDPCustomExpandableView: UIViewController,ExpandableLabelDelegate{
    
    @IBOutlet weak var expandableLabel:ExpandableLabel!
    @IBOutlet weak var stackView:UIStackView?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureView(label: "Great design, great materials & great quality. If you are thinking about buying this one but can’t make up your mind, just go for it. There is no way you’ll re", maxRowLabel: 3, views: nil, collapsedText: "Read More")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureView(label:String,maxRowLabel:Int,views:[UIView]?,collapsedText:String){
        
        self.expandableLabel.collapsed = true
        

        self.expandableLabel.collapsedAttributedLink = NSAttributedString(string: collapsedText)
        
        self.expandableLabel.text = label
        self.expandableLabel.numberOfLines = maxRowLabel
        
        self.expandableLabel.shouldCollapse = true
        self.expandableLabel.shouldExpand = true
        
        
        if let viewsValue = views  {
            self.stackView = UIStackView()
            _ = viewsValue.map({ view in
                return self.stackView?.addArrangedSubview(view)
            })
        } else {
            self.stackView = nil
        }
        
    }

    func willExpandLabel(_ label: ExpandableLabel) {
        
    }
    
    func willCollapseLabel(_ label: ExpandableLabel) {
        
    }
    
    func didExpandLabel(_ label: ExpandableLabel) {
        
    }
    
    func didCollapseLabel(_ label: ExpandableLabel) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
