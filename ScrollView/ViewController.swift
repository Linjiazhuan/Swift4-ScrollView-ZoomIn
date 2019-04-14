//
//  ViewController.swift
//  ScrollView
//
//  Created by Apple on 2019/4/14.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var myimageView:UIImageView!
    @IBOutlet weak var myscrollView:UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myscrollView.delegate = self
        
        //顯示內容的長度
        myscrollView.contentSize.width = 1920
        myscrollView.contentSize.height = 1080
        
        //縮放圖片大小
        myscrollView.minimumZoomScale = 1.0
        myscrollView.maximumZoomScale = 5.0
        // Do any additional setup after loading the view.
        
        
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return myimageView
    }


}

