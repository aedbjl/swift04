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

var obj2 = Sub11()
print(obj2.x)
obj2.f1()
obj2.f2(x:1)
obj2.f2(y:1)
print("--------------")

var obj3 = Super3()
var obj31 = Sub31()
var obj32 = Sub32()

print(obj3 is Super3)
print(obj31 is Sub31)
print(obj32 is MyClass01)

var obj33 : Super3 = Sub31()
print(obj33 is Sub32)
//obj33.f1() //因為型別宣告為Super3 只有f1()可選擇
var obj34 = obj33 as! Sub31 //可能是Sub32 需強制轉型
print(type(of:obj34))
//var obj35 = obj33 as! Sub32 風險存在
if obj33 === obj34 {
    print("OK")
}else {
    print("XX")
}
obj33.f1() //呼叫看型別 執行看物件
print("--------------")
func needSuper3(obj:Super3){
    obj.f1()
    if obj is Sub31{
        (obj as! Sub31).f3()
    }
    if obj is Sub32 {
        (obj as! Sub32).f4()
    }
}

needSuper3(obj: obj31)
needSuper3(obj: obj32)

var obj35:Super3 = obj31 as Super3

func needObj(obj:AnyObject){
    print(type(of:obj))
}
needObj(obj:obj31)
//Any => class object, struct value, enum.no func
func needAnything(something:Any){
    print(type(of:something))
}
needAnything(something: "Hello")
needAnything(something: obj32)
obj32.f1()
extension Sub32 {
    func sayYa(){
        print("Ya")
    }
}
obj32.sayYa()

extension Int{
    func whoru(){
        print("XXXXx \(self.hashValue)")
    }
}
123.whoru()
