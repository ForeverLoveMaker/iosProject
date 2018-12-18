//
//  MyShape.swift
//  9.1Gesture
//
//  Created by student on 2018/11/10.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import Foundation
import UIKit

class MyCircle: UIView {
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.green.setFill()
        path.fill()
    }
}
