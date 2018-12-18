//
//  ViewController.swift
//  NetworkDemo
//
//  Created by liguiyang on 2018/12/12.
//  Copyright © 2018年 liguiyang. All rights reserved.
//

import UIKit
import Alamofire

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func loadWithURL(_ sender: Any) {
        DispatchQueue.global().async {
            if let url = URL(string: "http://10.0.1.2/pic.php?id=1"),let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    self.imageView1.image = UIImage(data: data)
                }
            }
        }
    }
    @IBAction func loadWithSession(_ sender: Any) {
        if let url = URL(string: "http://10.0.1.2/pic.php?id=2") {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    DispatchQueue.main.async {
                        self.imageView2.image = UIImage(data: data!)
                    }
                }
            }
            task.resume()
        }
    }
    @IBAction func loadWithAF(_ sender: Any) {
        if let url = URL(string: "http://10.0.1.2/pic.php?id=2") {
            AF.request(url).responseData { (response) in
                self.imageView2.image = UIImage(data: response.data!)
            }
        }
    }
    

}

