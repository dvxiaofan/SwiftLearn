//
//  ViewController.swift
//  图文混排-Swift
//
//  Created by xiaofans on 16/8/16.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attrStr = NSAttributedString(string: "小烦", attributes: [NSForegroundColorAttributeName : UIColor.orangeColor()])
        let attriStr1 = NSAttributedString(string: "小明同学", attributes: [NSForegroundColorAttributeName : UIColor.blueColor()])
        
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: "d_beishang")
        let font = showLabel.font
        attachment.bounds = CGRect(x: 0, y: -4, width: font.lineHeight, height: font.lineHeight)
        let attImageStr = NSAttributedString(attachment: attachment)
        
        
        let attriMuStr = NSMutableAttributedString()
        attriMuStr.appendAttributedString(attrStr)
        attriMuStr.appendAttributedString(attImageStr)
        attriMuStr.appendAttributedString(attriStr1)
        
        showLabel.attributedText = attriMuStr
        
    }


}
















