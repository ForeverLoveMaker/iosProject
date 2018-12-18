//
//  MyView.swift
//  Helloworld01
//
//  Created by student on 2018/11/3.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import Foundation
import UIKit

class MyView: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: rect.size.width/2, y: 0))
        path.addLine(to: CGPoint(x: rect.size.width, y: rect.size.height))
        path.addLine(to: CGPoint(x: 0, y: rect.size.height))
        path.close()
        
        UIColor.orange.setFill()
        path.fill()
    }
}
