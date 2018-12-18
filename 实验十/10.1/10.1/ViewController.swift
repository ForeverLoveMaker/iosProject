//
//  ViewController.swift
//  10.1
//
//  Created by student on 2018/11/21.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changePosition(_ sender: Any) {
        UIView.animate(withDuration: 4, delay: 1,options: [.curveEaseInOut,.autoreverse], animations: {
            self.myView.center.x = self.view.bounds.width - 50
            self.myView.center.y = self.view.bounds.height - 50
            self.myView.backgroundColor = UIColor.gray
        }, completion: nil)
    }
    
    @IBAction func changeMax_Min(_ sender: Any) {
        UIView.animate(withDuration: 4, delay: 1,options: [.curveEaseInOut,.autoreverse], animations: {
            self.myView.center.x = self.view.bounds.width - 50
            self.myView.center.y = self.view.bounds.height - 50
            self.myView.transform = CGAffineTransform.init(scaleX: 0.5, y: 0.5)
        }, completion: nil)    }
    
    @IBAction func changeTransform(_ sender: Any) {
        UIView.animate(withDuration: 4, delay: 1,options: [.curveEaseInOut,.autoreverse], animations: {
            self.myView.center.x = self.view.bounds.width - 50
            self.myView.center.y = self.view.bounds.height - 50
            self.myView.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
            self.myView.transform = CGAffineTransform.init(rotationAngle: CGFloat(Double.pi))
            self.myView.transform = CGAffineTransform.identity
        }, completion: nil)    }
}

