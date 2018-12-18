//
//  ViewController.swift
//  scrollView_2014110460
//
//  Created by student on 2018/11/7.
//  Copyright © 2018年 2014110460. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UIScrollViewDelegate{

    @IBOutlet weak var SecondScrollView: UIScrollView!
    
@IBOutlet weak var PageControl: UIPageControl!
    
@IBOutlet weak var FirstScrollView: UIScrollView!
    
override func viewDidLoad() {
        
super.viewDidLoad()
        
FirstScrollView.minimumZoomScale = 0.1
        FirstScrollView.maximumZoomScale = 10
        
FirstScrollView.delegate = self
        
let imageView = UIImageView(image: UIImage(named: "image1"))
        FirstScrollView.addSubview(imageView)
        FirstScrollView.contentSize = imageView.bounds.size
        
        
        for i in 1...7{
            
let imageView = UIImageView(image: UIImage(named: "image\(i)"))
            imageView.contentMode = .scaleAspectFit
            imageView.frame = CGRect(x: CGFloat(i-1) * SecondScrollView.bounds.width, y: 0, width: SecondScrollView.bounds.width, height: SecondScrollView.bounds.height)
            SecondScrollView.addSubview(imageView)
            SecondScrollView.contentSize = CGSize(width: SecondScrollView.bounds.width * 7, height: SecondScrollView.bounds.height)
            SecondScrollView.isPagingEnabled = true
            SecondScrollView.showsHorizontalScrollIndicator = false
            SecondScrollView.delegate = self
            
PageControl.numberOfPages = 7
            
PageControl.currentPage = 0
        }
    }
    
    
    
func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return FirstScrollView.subviews.first
        
}
    
    
@IBAction func pageControllClicked(_ sender: UIPageControl) {
        let currentPage = sender.currentPage
        
let rect = CGRectx:CGFloatcurrentPage)*SecondScrollView.bounds.width, y: 0, width: SecondScrollView.bounds.width, height: SecondScrollView.bounds.height)
        SecondScrollView.scrollRectToVisible(rect, animated: true)
        
    }
    
func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let currentPage = SecondScrollView.contentOffset.x/SecondScrollView.bounds.width
        PageControl.currentPage = Int(currentPage)
    }
    }


