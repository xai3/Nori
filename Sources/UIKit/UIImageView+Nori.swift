//
//  UIImageView+Nori.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public extension UIImageView {
    public func stylize(with style: ImageViewStyle) {
        super.stylize(with: style)
        style.stylizeTo(imageView: self)
    }
}
