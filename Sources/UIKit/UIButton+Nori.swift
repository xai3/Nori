//
//  UIButton+Nori.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public extension UIButton {
    public func stylize(with style: ButtonStyle, for state: UIControlState) {
        super.stylize(with: style)
        
        if let titleStyle = style.title {
            titleLabel?.stylize(with: titleStyle)
            let color = titleStyle.textColor ?? titleColor(for: state)
            setTitleColor(color, for: state)
        }
        if let imageViewStyle = style.image {
            imageView?.stylize(with: imageViewStyle)
        }
        
        let image = style.image?.image ?? self.image(for: state)
        setImage(image, for: state)

        contentEdgeInsets ??= style.contentEdgeInsets
        titleEdgeInsets ??= style.titleEdgeInsets
        imageEdgeInsets ??= style.imageEdgeInsets
    }
}
