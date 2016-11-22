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
    public var imageEdgeInsets: UIEdgeInsets?
    
    public convenience init(closure: (ButtonStyle) -> Void) {
        self.init()
        closure(self)
    }
}
