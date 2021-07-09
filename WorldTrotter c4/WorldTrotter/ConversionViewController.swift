//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Muhammad Rahmatullah on 30/06/21.
//

import UIKit

class ConversionViewController: UIViewController {
    
    var colGenerator: RandomColorGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ConversionViewController load its view")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        colGenerator = RandomColorGenerator()
        
        view.backgroundColor = colGenerator.genColor()
        
    }


//    override func viewDidLoad() {
//        super.viewDidLoad()
//        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
//        let firstView = UIView(frame: firstFrame)
//        firstView.backgroundColor = UIColor.blue
//        view.addSubview(firstView)
//
//        let secondFrame = CGRect(x: 20, y: 30, width: 50, height: 50)
//        let secondView = UIView(frame: secondFrame)
//        secondView.backgroundColor = UIColor.green
//        firstView.addSubview(secondView)
//    }
    

          /// this is chapter 3 silver challenge solution
//        override func viewDidLoad() {
//            super.viewDidLoad()
//
//            let layer = CAGradientLayer()
//            layer.colors = [UIColor.purple.cgColor,
//                            UIColor.blue.cgColor,
//                            UIColor.green.cgColor,
//                            UIColor.yellow.cgColor,
//                            UIColor.orange.cgColor,
//                            UIColor.red.cgColor,]
//
//            layer.frame = view.frame
//            view.layer.insertSublayer(layer, at: 0)
//
//        }
    
}

