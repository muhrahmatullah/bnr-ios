//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Muhammad Rahmatullah on 30/06/21.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {
    
    var colGenerator: RandomColorGenerator!
    
    @IBOutlet var celciusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    var fahrenheitValue: Measurement<UnitTemperature>? {
        didSet {
            updateCelsiusLabel()
        }
    }
    var celciusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        let hasCharacter = NSCharacterSet.letters
        let symbol = NSCharacterSet.symbols
        let replacementHasCharacter = string.rangeOfCharacter(from: hasCharacter)
        let replacementSymbol = string.rangeOfCharacter(from: symbol)
        
        if replacementHasCharacter != nil {
            return false
        }
        
        if replacementSymbol != nil {
            return false
        }
        
        if existingTextHasDecimalSeparator != nil,
           replacementTextHasDecimalSeparator != nil {
            return false
        }
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ConversionViewController load its view")
        updateCelsiusLabel()
    }
    
    func updateCelsiusLabel() {
        if let celciusValue = celciusValue {
//            celciusLabel.text = "\(celciusValue.value)"
            celciusLabel.text = numberFormatter.string(from: NSNumber(value: celciusValue.value))
        } else {
            celciusLabel.text = "???"
        }
    }
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        if let text = textField.text, let value = Double(text) {
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        } else {
            fahrenheitValue = nil
        }
    }
    
    @IBAction func dismissKeyBoard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        colGenerator = RandomColorGenerator()
        
//        view.backgroundColor = colGenerator.genColor()
        
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

