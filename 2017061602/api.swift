//
//  api.swift
//  2017061602
//
//  Created by iii-user on 2017/6/16.
//  Copyright © 2017年 iii-user. All rights reserved.
//

import Foundation

class MyClass01{
    var x:Int
    init(x:Int){self.x = x}
    
    subscript (y:Int) -> String {
        return "\(x) x \(y) = \(x * y)"
    }
    subscript(y:Int,z:Int)->Int{
        return 123
    }
    subscript(y:Double)-> Double{
        get{
            print("get")
            return floor(y)
        }
        set{
           print("set")
            self.x = Int(ceil(newValue))
        }
    }
}
//-------------------------
class Super1{
    private var x = 10
    var y = 2
    var z = 2
    var a :Int{
        get{
            return 1
        }
        set{
            
        }
    }
    func f1() {
        print("Super1:f1()")
    }
    func f2(x:Int) -> Double{
        print("f2(x:Int)")
        return 1.0
    }
}
class Sub11: Super1{
     var x = 3
    override var y : Int {
        get{
            return 3
        }
        set{
            
        }
        
    }
    override var z :Int{
        willSet{
            
        }
        didSet{
            
        }
    }
    override var a :Int{
        get{
            return 1
        }
        set{
            
        }
    }
    override func f1() {
        super.f1() //與語法無關，編譯邏輯上有這行
        print("Sub11:f1()")
    }
    func f2(y:Int){
        print("f2(y:Int)")
    }
    override func f2(x:Int)->Double{
        f1()
        super.f1()
        return 1.0
    }
}
//-------

final class Super2 { //絕子絕孫
    
}
//class Sub21 : Super2{
//    
//}
//--------------------------
class Super3{
    func f1(){print("Super:f1()")}
}
class Sub31: Super3 {
    override func f1(){print("Sub31:f1()")}
    func f2(){print("Sub31:f2()")}
    func f3(){print("Sub31:f3()")}
}
class Sub32: Super3 {
    override func f1(){print("Sub32:f1()")}
    func f2(){print("Sub32:f2()")}
    func f4(){print("Sub32:f4()")}
}
