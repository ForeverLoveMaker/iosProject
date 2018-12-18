//
//  ViewController.swift
//  UIAlertController
//
//  Created by student on 2018/11/7.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ShowActionSheet(_ sender: Any) {
        let alert = UIAlertController(title: "改变背景颜色", message: "选择下列按钮更换颜色", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "橙色", style: .default, handler: {(action) in
            self.view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
            }))
        alert.addAction(UIAlertAction(title: "绿色", style: .default, handler: {(action) in
            self.view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
            }))
        alert.addAction(UIAlertAction(title: "蓝色", style: .default, handler: {(action) in
            self.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }))
        alert.addAction(UIAlertAction(title: "红色", style: .destructive, handler: {(action) in
            self.view.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
            }))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: {(action) in
            self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            }))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func ShowAlert(_ sender: Any) {
        let alert = UIAlertController(title: "欢迎登陆", message: "欢迎登陆本系统", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "登陆", style: .default, handler: {(action) in
            guard let userName = alert.textFields?.first?.text , let password = alert.textFields?.last?.text else{
                return
            }
            print("\(userName)登陆成功！！！")
        }))
        alert.addAction(UIAlertAction(title: "取消", style: .cancel, handler: {(action) in}))
        alert.addTextField {(textFiled) in
            textFiled.placeholder = "请输入账号"
        }
        alert.addTextField {(textFiled) in
            textFiled.placeholder = "请输入密码"
            textFiled.isSecureTextEntry = true
        }
        present(alert,animated: true,completion: nil)
    }
}

