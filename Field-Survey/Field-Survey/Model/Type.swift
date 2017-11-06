//
//  type.swift
//  Field-Survey
//
//  Created by Matthew McCarthy on 10/31/17.
//  Copyright © 2017 tech innovator. All rights reserved.
//

import UIKit
enum Type : String{
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage?{
        return UIImage(named: self.rawValue + "Icon")
    }
}
