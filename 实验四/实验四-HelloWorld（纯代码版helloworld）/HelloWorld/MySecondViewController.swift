//
//  MySecondViewController.swift
//  HelloWorld
//
//  Created by student on 2018/10/17.
//  Copyright © 2018年 student. All rights reserved.
//

import UIKit

class MySecondViewController: UIViewController {

    var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageview = UIImageView(frame: CGRect(x: 50,y: 50, width: 200,height: 100))
        imageview.image = UIImage(named:"test")
        view.addSubview(imageview)
        self.title = "Second"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
