//
//  Shape.swift
//  Swiftris
//
//  Created by Allbee, Eamon on 1/16/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import SpriteKit

let NumOrientations: UInt32 = 4

enum Orientation: Int, CustomStringConvertible {
    case Zero = 0, Ninety, OneEighty, TwoSeventy
    
    var description: String {
        switch self {
        case .Zero:
            return "0"
        case .Ninety:
            return "90"
        case .OneEighty:
            return "180"
        case .TwoSeventy:
            return "270"
        }
    }
    
    static func random() -> Orientation {
        return Orientation(rawValue:Int(arc4random_uniform(NumOrientations)))!
    }
    
    static func rotate(orientation:Orientation, clockwise: Bool) ->
        Orientation {
            var rotated = orientation.rawValue + (clockwise ? 1 : -1)
            if rotated > Orientation.TwoSeventy.rawValue {
                rotated = Orientation.Zero.rawValue
            } else if rotated < 0 {
                rotated = Orientation.TwoSeventy.rawValue
            }
            return Orientation(rawValue:rotated)!
    }
}
