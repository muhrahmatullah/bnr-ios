//
//  RandomColorGenerator.swift
//  WorldTrotter
//
//  Created by Muhammad Rahmatullah on 09/07/21.
//

import Foundation
import UIKit

class RandomColorGenerator {
    
    func genColor() -> UIColor! {
        let arrCol = [
            UIColor.red,
            UIColor.blue,
            UIColor.yellow,
            UIColor.black,
            UIColor.white,
            UIColor.brown,
            UIColor.cyan,
        ]
        
        let randomNum = Int.random(in: 0...arrCol.count - 1)
        
        return arrCol[randomNum]
    }
    
    
}
