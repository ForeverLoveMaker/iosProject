//
//  ShowDetailViewController.swift
//  11.2coreData
//
//  Created by student on 2018/12/8.
//  Copyright © 2018年 zhulonghao. All rights reserved.
//

import UIKit

class ShowDetailViewController: UIViewController {
    
    var person:Person?
    
  
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbPhone: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbName.text = "name:" + (person?.name)!
        lbPhone.text = "phone:" + (person?.phone)!

        lbName.sizeToFit()
        lbPhone.sizeToFit()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

*/
}
