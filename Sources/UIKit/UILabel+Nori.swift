//
//  UILabel+Nori.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public extension UILabel {
    public func stylize(with style: LabelStyle) {
        super.stylize(with: style)
        style.stylizeTo(label: self)
    }
}
