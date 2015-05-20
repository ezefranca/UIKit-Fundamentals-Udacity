//
//  ViewController.swift
//  Click Count
//
//  Created by Ezequiel on 20/05/15.
//  Copyright (c) 2015 Ezequiel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        var label = UILabel();
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.label = label
        self.view.addSubview(label)
        
        //Button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "increment", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func increment(){
        self.count++
        self.label.text = "\(self.count)"
    }
}

