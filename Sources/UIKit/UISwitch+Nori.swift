//
//  UISwitch+Nori.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public extension UISwitch {
    public func stylize(with style: SwitchStyle) {
        super.stylize(with: style)
        onTintColor ??= style.onTintColor
    }
}
