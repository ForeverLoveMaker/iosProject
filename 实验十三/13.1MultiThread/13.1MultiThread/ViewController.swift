//
//  ViewController.swift
//  13.1MultiThread
//
//  Created by student on 2018/12/12.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sumLB: UILabel!
    @IBOutlet weak var timeLB: UILabel!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true){(timer) in
            self.count += 1
            self.timeLB.text = "\(self.count)"
        }
    }

    @IBAction func sum(_ sender: Any) {
        var sum = 0
        DispatchQueue.global().async {
            for i in 1...9999999{
                sum += i
            }
        }
        DispatchQueue.main.async {
             self.sumLB.text = "\(sum)"
        }
       
        
    }
    
}

