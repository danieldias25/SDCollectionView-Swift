//
//  ViewController.swift
//  Example
//  Created by Daniel Dias on 20/10/17.
//  Copyright © 2017 Daniel.Dias. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SDSelectorViewDelegate {
    
    //Don't forget to make you scrollView be a SDSelectorView object
    @IBOutlet weak var myScroll: SDSelectorView!
    
    
    var enablePresentation: Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //if you want to use delegate methods, set the SDDelegate as self
        self.myScroll.SDDelegate = self
        
        //presentation mode is true by default
        self.myScroll.presentationModeEnable = self.enablePresentation
        
        //to configure SDSelectorView first you need an array of images
        var myImages: [UIImage] = []
        
        for i in 1...9{
            let image = UIImage(named: "1\(i)")
            myImages.append(image!)
        }
        
        //here is all you need to finally make you image gallery selector show up as expected
        self.myScroll.configSDSelectorWith(imageSize: CGSize(width: 80.0, height: 80.0), spacedBy: 20.00, withImages: myImages)
        
    }
    
    //this delegate method is called when you change the selected index
    func didCangedIndex(index: Int) {
        //        print(index)
    }
    
    
     //this delegate method is called when you tap in selected view
    func didSelectView(index: Int) {
        //        print(index)
    }
    
    
    //if you want you could disable presentation Mode at any time
    
    @IBAction func animationChange(_ sender: Any) {
        self.enablePresentation = !self.enablePresentation
        
        self.myScroll.presentationModeEnable = self.enablePresentation
        
    }
    
    // you could also force to go at some index
    @IBAction func index(_ sender: Any) {
        
        self.myScroll.goToIndex(index: 1)

    }
    
}

