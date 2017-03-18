//
//  UISwitch+Nori.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public extension UISwitch {
    @discardableResult
    public func stylize(with style: SwitchStyle) -> UISwitch {
        super.stylize(with: style)
        style.stylizeTo(view: self)
        return self
    }
}
