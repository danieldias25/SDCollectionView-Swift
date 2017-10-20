//
//  ViewController.swift
//  Example
//
//  Created by Daniel Dias on 20/10/17.
//  Copyright © 2017 Daniel.Dias. All rights reserved.
//

import UIKit

class ViewController: UIViewController,SDSelectorViewDelegate {
    
    
    @IBOutlet weak var myScroll: SDSelectorView!
    
    
    var enablePresentation: Bool = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myScroll.SDdelegate = self
        self.myScroll.presentationModeEnable = self.enablePresentation
        
        
        var myImages: [UIImage] = []
        
        for i in 1...9{
            let image = UIImage(named: "1\(i)")
            myImages.append(image!)
        }
        
        self.myScroll.configSDSelectorWith(imageSize: CGSize(width: 80.0, height: 80.0), spacedBy: 20.00, withImages: myImages)
        
    }
    
    func didCangedIndex(index: Int) {
        //        print(index)
    }
    
    func didSelectView(index: Int) {
        //        print(index)
    }
    
    
    
    @IBAction func animationChange(_ sender: Any) {
        self.enablePresentation = !self.enablePresentation
        
        self.myScroll.presentationModeEnable = self.enablePresentation
        
    }
    
    @IBAction func index(_ sender: Any) {
        
        self.myScroll.goToIndex(index: 1)

    }
    
}

