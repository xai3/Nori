//
//  ShadowStyle.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public class ShadowStyle {
    public var offset: CGSize?
    public var color: UIColor?
    public var radius: CGFloat?
    public var opacity: Float?
    
    public init() { }
    
    public convenience init(closure: (ShadowStyle) -> Void) {
        self.init()
        closure(self)
    }
}
