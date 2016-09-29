//
//  ViewController.swift
//  正则表达式
//
//  Created by xiaofans on 16/8/16.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showLabel: UILabel!
    
    private lazy var manager : XFEmoticonManager = XFEmoticonManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusText = "@張張張小煩: [吃惊]#点评新闻#【环京房产投资中】. [偷笑]曾经的. @小明同学: hello.@xiaofan: 十年黄金期房地产.[好爱哦]市场历史告诉我们，[吃惊]每一个区域的崛起都伴随着一次楼市契机。http://t.cn/RtHm65V"
        
        showLabel.attributedText = XFFindEmoticom.shareInstance.findAttrString(statusText, font: showLabel.font)
        
       
    }
    
}















