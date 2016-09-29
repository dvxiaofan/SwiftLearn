//
//  ViewController.swift
//  Swift 中tableView 简单使用
//
//  Created by xiaofans on 16/8/5.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK:- 懒加载创建对象
    lazy var tableView : UITableView = UITableView()
    
    // MARK:- 系统回调
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUIView()
        XFLog(3333)
    }
}

// extension 类似 oc 的 catefory, 只能扩充方法, 不能扩充属性

// MARK: - 设置界面
extension ViewController {
    /// 设置 UI 界面
    func setupUIView() {
        // 1. 将 tableView 加入 view 中
        view.addSubview(tableView)
        
        // 2. 设置 frame
        tableView.frame = view.bounds
        
        // 3. 设置数据源
        tableView.dataSource = self
        
        // 4. 设置代理
        tableView.delegate = self
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK:- UITableViewDataSource

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // 1. 创建 cell
        let cellID = "cellID"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellID)
        if cell == nil {
            // Swift 中的枚举使用: 1. 枚举类型.具体类型  2. 直接  .具体类型
            cell = UITableViewCell(style: .Default, reuseIdentifier: cellID)
        }
        
        // 2. 设置数据
        cell?.textLabel?.text = "测试数据\(indexPath.row)"
        
        // 3. 返回 cell
        return cell!
    }
    
    // MARK:- UITableViewDelegate
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        XFLog("click: \(indexPath.row)")
    }
}










