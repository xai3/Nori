//
//  UITextField+Nori.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public extension UITextField {
    @discardableResult
    public func stylize(with style: TextFieldStyle) -> UITextField {
        super.stylize(with: style)
        textColor ??= style.textColor
        font ??= style.font
        borderStyle ??= style.borderStyle
        textAlignment ??= style.align
        return self
    }
}
