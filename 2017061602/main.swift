//
//  main.swift
//  2017061602
//
//  Created by iii-user on 2017/6/16.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation

var obj1 = MyClass01(x:2)
print(obj1[2])
//物件[]帶出return
obj1.x = 3
print(obj1[7])
for i in 1...9 {
    print(obj1[i])
}

print(obj1[3,4])

print(obj1[3.14])
obj1[3.14] = 7.123
print(obj1.x)
