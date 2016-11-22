//
//  ShadowStyle.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public class ShadowStyle {
    var offset: CGSize?
    var color: UIColor?
    var radius: CGFloat?
    var opacity: Float?
    
    public init() { }
    
    public convenience init(closure: (ShadowStyle) -> Void) {
        self.init()
        closure(self)
    }
}
