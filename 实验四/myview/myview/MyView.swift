//
//  MyView.swift
//  myview
//
//  Created by 7 on 2018/12/17.
//  Copyright © 2018 7. All rights reserved.
//

import UIKit

class MyView: UIView {
    override func draw(_ rect: CGRect){
        let path = UIBezierPath(ovalIn: rect)
        
        UIColor.red.setStroke()  //红色边界
        path.stroke()
        
        UIColor.yellow.setFill()  //黄色填充
        path.fill()
    }
}
