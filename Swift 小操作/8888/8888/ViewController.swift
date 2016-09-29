//
//  ViewController.swift
//  8888
//
//  Created by xiaofans on 16/9/8.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let button = UIButton()
//        button.setTitle("button", for: .normal)
//        
//        for i in 1...10 {
//            print(i)
//        }
        
    }
    
    @IBAction func alertClick(_ sender: AnyObject) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let action = UIAlertAction(title: "确定", style: .default) { (action) in
            print(action.title!)
        }
        let action3 = UIAlertAction(title: "确定3", style: .default) { (action) in
            print(action.title!)
        }
        let action4 = UIAlertAction(title: "确定4", style: .default) { (action) in
            print(action.title!)
        }
        let action2 = UIAlertAction(title: "取消", style: .cancel) { (action) in
            print(action.title!)
        }
        alert.addAction(action)
        alert.addAction(action2)
        alert.addAction(action3)
        alert.addAction(action4)
        
        present(alert, animated: true, completion: nil)
    }



}














