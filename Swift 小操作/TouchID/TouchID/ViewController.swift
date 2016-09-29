//
//  ViewController.swift
//  TouchID
//
//  Created by xiaofans on 16/9/3.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK:- 调用 touch ID 操作
    @IBAction func touchMe(sender: AnyObject) {
        let context = LAContext()
        var error : NSError?
        // 设备支持touch ID
        if context.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error: &error) {
            context.evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "Touch ID 解锁", reply: { (success, error) -> Void in
                if success {
                    NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
                        self.rightID()
                    })
                } else {
                    let alert = UIAlertController(title: "Touch ID 验证失败", message: "请重试", preferredStyle: .Alert)
                    alert.addAction(UIAlertAction(title: "确定", style: .Default, handler: nil))
                    self.presentViewController(alert, animated: true, completion: nil)
                }
            })
        } else { // 设备不支持 touch ID
            let alert = UIAlertController(title: "不支持Touch ID", message: "对不起", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "确定", style: .Default, handler: nil))
            presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    private func rightID() {
        label.hidden = false
    }

}












