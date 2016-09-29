//
//  main.swift
//  testOne
//
//  Created by xiaofans on 16/9/7.
//  Copyright © 2016年 xiaofan. All rights reserved.
//

import Foundation

func test(a: Int, b: Int) -> Int {
    if a==b {
        return a
    }
    
    var c = a
    var d = b
    
    repeat {
        if c > d {
            c = c - d
        } else {
            d = d - c
        }
    } while (c != d)
    
    return c
    
}

print(test(a: 30, b: 23))
















