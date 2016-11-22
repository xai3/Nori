//
//  ImageViewStyle.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public class ImageViewStyle: ViewStyle {
    public var image: UIImage?
    
    public convenience init(closure: (ImageViewStyle) -> Void) {
        self.init()
        closure(self)
    }
}
