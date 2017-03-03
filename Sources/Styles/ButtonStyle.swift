//
//  ButtonStyle.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public class ButtonStyle: ViewStyle {
    public var title: LabelStyle?
    public var image: ImageViewStyle?
    public var contentEdgeInsets: UIEdgeInsets?
    public var titleEdgeInsets: UIEdgeInsets?
    public var imageEdgeInsets: UIEdgeInsets?
    
    public convenience init(closure: (ButtonStyle) -> Void) {
        self.init()
        closure(self)
    }
    
    public func stylizeTo(button: UIButton, state: UIControlState) {
        if let titleStyle = title {
            button.titleLabel?.stylize(with: titleStyle)
            let color = titleStyle.textColor ?? button.titleColor(for: state)
            button.setTitleColor(color, for: state)
        }
        if let imageViewStyle = self.image {
            button.imageView?.stylize(with: imageViewStyle)
        }
        
        let image = self.image?.image ?? button.image(for: state)
        button.setImage(image, for: state)
        
        contentEdgeInsets ??= contentEdgeInsets
        titleEdgeInsets ??= titleEdgeInsets
        imageEdgeInsets ??= imageEdgeInsets
    }
}
