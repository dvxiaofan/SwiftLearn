//
//  ViewController.swift
//  Swift 异常练习
//
//  Created by xiaofans on 16/8/6.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 正则表达式
        // 创建正则表达式规则
        let pattern = "abc"
        
        // 2. 创建正则表达式对象
        
        do {
            let regex1 = try NSRegularExpression(pattern: pattern, options: .CaseInsensitive)
        } catch {
            print(error)
        }
        
        guard let regex2 = try? NSRegularExpression(pattern: pattern, options: .CaseInsensitive) else {
            print("yichang")
            return
        }
        
        let egex3 = try! NSRegularExpression(pattern: pattern, options: .CaseInsensitive)
        
    }


}

