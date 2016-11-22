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
        textColor ??= style.textColor
        font ??= style.font
        textAlignment ??= style.align
        numberOfLines ??= style.lines
        minimumScaleFactor ??= style.minimumScale
        adjustsFontSizeToFitWidth = minimumScaleFactor > 0.0
    }
}
