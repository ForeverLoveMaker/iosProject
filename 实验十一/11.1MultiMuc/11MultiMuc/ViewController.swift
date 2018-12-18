//
//  ViewController.swift
//  11MultiMuc
//
//  Created by student on 2018/12/5.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var pwdTf: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Second" {
            let secVc = segue.destination as! SecondViewController
            secVc.id = idTF.text!
            secVc.pwd = pwdTf.text!
        }
    }
    
    @IBAction func change(segue:UIStoryboardSegue){
        let secVC = segue.source as! SecondViewController
        idTF.text = secVC.id
        pwdTf.text = secVC.pwd
    }
}

