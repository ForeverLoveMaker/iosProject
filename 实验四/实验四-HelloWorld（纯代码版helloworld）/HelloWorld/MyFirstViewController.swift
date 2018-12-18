//
//  MyFirstViewController.swift
//  HelloWorld
//
//  Created by student on 2018/10/17.
//  Copyright © 2018年 student. All rights reserved.
//

import UIKit

class MyFirstViewController: UIViewController {
    
    var label: UILabel!
    var button: UIButton!
    var myView:MyView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label = UILabel(frame: CGRect(x: 0,y: 0,width:100,height:50))
        label.text = "Hello World!!!!"
        label.textAlignment = .center
        label.backgroundColor = UIColor.brown
        label.center = view.center
        view.addSubview(label)
        
        button = UIButton(frame: CGRect(x: 0, y: 60, width: 150, height: 25))
        button.setTitleColor(UIColor.green, for: .normal)
        button.setTitle("Click Me", for: .normal)
        view.addSubview(button)
        
        myView = MyView()
        myView.draw(CGRect(x: 0, y: 80, width: 50, height: 50))
        view.addSubview(myView)
        
        
        
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.title = "First"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnClicked(){
        label.text = "I am Clicked!!"
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
