//
//  UIView+Nori.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

import UIKit

@IBDesignable public extension UIView {
    @discardableResult
    public func stylize(with style: ViewStyle) -> UIView {
        style.stylizeTo(view: self)
        return self
    }
}

