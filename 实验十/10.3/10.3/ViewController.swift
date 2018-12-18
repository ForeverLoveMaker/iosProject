//
//  ViewController.swift
//  10.3
//
//  Created by student on 2018/11/21.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    lazy var animator = UIDynamicAnimator(referenceView: self.myView)
    let gravity = UIGravityBehavior()
    let collision = UICollisionBehavior()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        animator.addBehavior(gravity)
        animator.addBehavior(collision)
        collision.translatesReferenceBoundsIntoBoundary = true
    }
    @IBAction func add(_ sender: Any) {
        let wid = Int(myView.bounds.width / 10)
        let x = Int(arc4random() % 10) * wid
        let label = UILabel(frame: CGRect(x: x, y: 20, width: wid, height: wid))
        label.backgroundColor = UIColor.green
        label.text = "B"
        label.textAlignment = .center
        myView.addSubview(label)
        
        gravity.addItem(label)
        collision.addItem(label)
        
    }
    
    @IBAction func up(_ sender: Any) {
       gravity.gravityDirection = CGVector(dx: 0, dy: -1)
    }
    
    @IBAction func down(_ sender: Any) {
        gravity.gravityDirection = CGVector(dx: 0, dy: 1)
    }
    @IBAction func left(_ sender: Any) {
        gravity.gravityDirection = CGVector(dx: -1, dy: 0)
    }
    
    @IBAction func right(_ sender: Any) {
        gravity.gravityDirection = CGVector(dx: 1, dy: 0)
    }
    
    @IBAction func deleteAll(_ sender: Any) {
        for lab in myView.subviews{
            if lab is UILabel{
                lab.removeFromSuperview()
                gravity.removeItem(lab)
                collision.removeItem(lab)
            }
        }
    }
}

