//
//  StyleGuide.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

import UIKit

enum FontSize: Int {
    case large = 32
    case medium = 20
    case small = 14
    
    var point: CGFloat {
        return CGFloat(rawValue)
    }
}

enum FontColor: Int {
    case black = 0x3a3e4b
    case gray = 0x95a5a6
    case darkGray = 0x7f8c8d
    case red = 0xe74c3c
    case green = 0x1abc9c
    case blue = 0x3498db
    
    var color: UIColor {
        return UIColor(red: CGFloat((rawValue >> 16) & 0xff) / 255,
                       green: CGFloat((rawValue >> 8) & 0xff) / 255,
                       blue: CGFloat(rawValue & 0xff) / 255,
                       alpha: 1)
    }
}
