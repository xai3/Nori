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
        backgroundColor ??= style.backgroundColor
        tintColor ??= style.tintColor
        alpha ??= style.alpha
        layer.cornerRadius ??= style.cornerRadius
        layer.borderWidth ??= style.border?.width
        layer.borderColor ??= style.border?.color?.cgColor
        layer.shadowOffset ??= style.shadow?.offset
        layer.shadowRadius ??= style.shadow?.radius
        layer.shadowOpacity ??= style.shadow?.opacity
        layer.shadowColor ??= style.shadow?.color?.cgColor
        layer.masksToBounds = style.shadow != nil
        contentMode ??= style.contentMode
    }
}

