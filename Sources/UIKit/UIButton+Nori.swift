//
//  UIButton+Nori.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public extension UIButton {
    @discardableResult
    public func stylize(with style: ButtonStyle, for state: UIControlState) -> UIButton {
        super.stylize(with: style)
        style.stylizeTo(button: self, state: state)
        return self
    }
}
