//
//  SecondViewController.swift
//  11MultiMuc
//
//  Created by student on 2018/12/5.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    var id = ""
    var pwd = ""
    
    
    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var pwdTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        idTF.text = id
        pwdTF.text = pwd
    }
    

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        id = idTF.text!
        pwd = pwdTF.text!
    }
    

}
