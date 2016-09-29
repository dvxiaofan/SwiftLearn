//
//  ViewController.swift
//  tableView 练习
//
//  Created by xiaofans on 16/8/5.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK:- 懒加载
    lazy var tableView : UITableView = UITableView()
    
    // MARK:- 系统回调
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

// MARK: - 设置界面
extension ViewController {
    /// 设置 UI 方法
    func setupUI() {
        
        view.addSubview(tableView)
        
        tableView.frame = view.bounds
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    // MARK:- UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellID = "cellID"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
        
        if cell == nil {
            cell  = UITableViewCell(style: .Default, reuseIdentifier: cellID)
        }
        
        cell?.textLabel?.text = "cell for: \(indexPath.row)"
        
        return cell!
    }
    
    
    // MARK:- UITableViewDelegate
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
         print("did select: \(indexPath.row)")
    }
}




















