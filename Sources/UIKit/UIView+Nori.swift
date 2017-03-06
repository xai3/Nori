//
//  UIView+Nori.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

import UIKit

@IBDesignable public extension UIView {
    public func stylize(with style: ViewStyle) {
        style.stylizeTo(view: self)
    }
}

