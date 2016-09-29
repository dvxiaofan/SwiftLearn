//
//  ViewController.swift
//  SwiftRandomNumber
//
//  Created by xiaofans on 16/9/2.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func creatRandomNumClick(sender: AnyObject) {
        let randomNum = arc4random_uniform(11)
        lable.text = String(randomNum)
        
        randomNumPut()
    }
    
    private func randomNumPut() {
        if lable.text == "5" {
            label2.text = "xiaoming"
        } else if lable.text == "3" {
            label2.text = "love"
        } else {
            label2.text = "fanfna"
        }
        
    }

}









