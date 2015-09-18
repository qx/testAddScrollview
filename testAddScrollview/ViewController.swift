//
//  ViewController.swift
//  testAddScrollview
//
//  Created by ok on 15/9/18.
//  Copyright (c) 2015年 ok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var myScrollview: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.containerView.removeConstraints(self.containerView.constraints())
        self.containerView.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.myScrollview.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.myScrollview.sizeToFit()
        self.myScrollview.contentSize.width = self.containerView.frame.size.width
        
        self.containerView.layoutMargins = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        var scrollViewCenterXCS = NSLayoutConstraint(item: self.myScrollview, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.containerView, attribute: NSLayoutAttribute.CenterX, multiplier: 1.0, constant: 0)
        
        var scrollViewTopCS = NSLayoutConstraint(item: self.myScrollview, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.containerView, attribute: NSLayoutAttribute.TopMargin, multiplier: 1.0, constant: 0)
        
        var scrollViewLeadingCS = NSLayoutConstraint(item: self.myScrollview, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: self.containerView, attribute: NSLayoutAttribute.LeadingMargin, multiplier: 1.0, constant: 0)
        //
        var scrollViewHeightCS = NSLayoutConstraint(item: self.myScrollview, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: self.view.frame.size.height)
        println("h1:\(self.containerView.frame.size.height)")
        println("w1:\(self.containerView.frame.size.width)")
        println("h2:\(self.view.frame.size.height)")
        println("w2:\(self.view.frame.size.width)")
      
        self.containerView.addConstraints([scrollViewCenterXCS,scrollViewTopCS,scrollViewLeadingCS,scrollViewHeightCS])
//        println("self.containerView layoutmargins:\(self.containerView.layoutMargins.left)")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

