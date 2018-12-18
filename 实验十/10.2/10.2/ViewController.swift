//
//  ViewController.swift
//  10.2
//
//  Created by student on 2018/11/21.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func funcOne(_ sender: Any) {
        UIView.transition(with: firstView, duration: 3, options: .transitionFlipFromBottom, animations: {
            self.firstView.backgroundColor = UIColor.gray
        }, completion: nil)
    }
    @IBAction func funTwo(_ sender: Any) {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.secondView.bounds.width, height: self.secondView.bounds.height))
        imageView.image = UIImage(named: "IMG")
        UIView.transition(from: self.secondView, to: imageView, duration: 3, options: .transitionCurlUp, completion: nil)
    }
}

