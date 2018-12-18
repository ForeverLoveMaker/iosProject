//
//  ViewController.swift
//  9.1Gesture
//
//  Created by student on 2018/11/10.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func AddView(_ sender: Any) {
        let x = Int(arc4random()) % Int(view.bounds.width)
        let y = Int(arc4random()) % Int(view.bounds.height)
        
        
        let MyView  = MyCircle(frame:CGRect(x: x, y: y, width: 80, height: 80))
        MyView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        
        MyView.layer.shadowColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        MyView.layer.shadowOffset = CGSize(width: 10, height: 10)
        MyView.layer.shadowOpacity = 0.6
        
        let panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(pan(recognizer:)))
        let pinchRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(pinch(recognizer:)))
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(tap(recognizer:)))
        let rotateRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(rotate(recognizer:)))
        MyView.addGestureRecognizer(panRecognizer)
        MyView.addGestureRecognizer(pinchRecognizer)
        MyView.addGestureRecognizer(tapRecognizer)
        MyView.addGestureRecognizer(rotateRecognizer)
        
        view.addSubview(MyView)
    }
    
    @IBAction func MoveView(_ sender: Any) {
        for myView in view.subviews{
            if myView is MyCircle{
                UIView.animate(withDuration: 1){
                    let x = Int(arc4random()) % Int(self.view.bounds.width)
                    let y = Int(arc4random()) % Int(self.view.bounds.height) 
                    myView.center.x = CGFloat(x)
                    myView.center.y = CGFloat(y)
                }
            }
        }
    }
    @IBAction func DeleteView(_ sender: Any) {
        for myView in view.subviews{
            if myView is MyCircle{
                myView.removeFromSuperview()
            }
        }
    }
    
    @objc func pan(recognizer:UIPanGestureRecognizer){
        switch recognizer.state {
        case .changed:
            fallthrough
        case .ended:
            let translation = recognizer.translation(in: self.view)
            recognizer.view?.center.x += translation.x
            recognizer.view!.center.y += translation.y
            recognizer.setTranslation(.zero, in: self.view)
        default:
            break
        }
    }
    @objc func pinch(recognizer:UIPinchGestureRecognizer){
        switch recognizer.state {
        case .changed:
            fallthrough
        case .ended:
            recognizer.view!.bounds.size = CGSize(width: (recognizer.view?.bounds.width)! * recognizer.scale, height: (recognizer.view?.bounds.height)! * recognizer.scale)
            recognizer.scale = 1
        default:
            break
        }
    }
    @objc func tap(recognizer:UITapGestureRecognizer){
        switch recognizer.state {
        case .recognized:
            fallthrough
        case .ended:
            recognizer.view?.removeFromSuperview()
        default:
            break
        }
    }
    @objc func rotate(recognizer:UIRotationGestureRecognizer){
        recognizer.view?.transform = CGAffineTransform(rotationAngle: recognizer.rotation)
    }
}

