//
//  ViewController.swift
//  HidenObject
//
//  Created by xiaofans on 16/9/3.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var redView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func hidenClick(sender: AnyObject) {
        label.hidden = true
        blueView.hidden = true
        redView.hidden = true
    }
    
    @IBAction func showClick(sender: AnyObject) {
        label.hidden = false
        blueView.hidden = false
        redView.hidden = false
    }
    
    @IBAction func hidenBlueView(sender: AnyObject) {
        blueView.hidden = true
    }
    
    @IBAction func hidenRedView(sender: AnyObject) {
        redView.hidden = true
    }

    @IBAction func isHiddenBtn(sender: AnyObject) {
        if label.hidden == true {
            label2.text = "隐藏了"
        } else {
            label2.text = "没有隐藏"
        }
    }

}










