//
//  ZXUIColor+Extension.swift
//  ZXPageView
//
//  Created by Anthony on 2017/11/2.
//  Copyright © 2017年 Anthony. All rights reserved.
//

import UIKit
/*
 在extension中扩充构造函数，只能扩充便利构造函数
 1>在init前需要加上关键字convenience
 2>在自定义的构造函数内部，必须明确通过self.init()调用其他的构造函数
 函数的重载
 1>函数名称相同，但是参数不同
 2>参数不同有两层函数: 1)参数的类型不同  2)参数的个数不同
 */
public extension UIColor{
    

    convenience init(r:CGFloat,g:CGFloat,b:CGFloat,alpha:CGFloat = 1.0) {
        self.init(red:r/255.0,green:g/255.0,blue:b/255.0,alpha:alpha)
    }
    
    
    /// 计算属性：只读属性
    class var randomColor : UIColor{
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }
    
    func getRGB() -> (CGFloat,CGFloat,CGFloat) {
        var red     :CGFloat = 0
        var green   :CGFloat = 0
        var blue    :CGFloat = 0
        getRed(&red, green: &green, blue: &blue, alpha: nil)
        return (red * 255,green * 255,blue * 255)
        
    }
    
}
