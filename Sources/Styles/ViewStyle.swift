//
//  ViewStyle.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public class ViewStyle {
    public var backgroundColor: UIColor?
    public var tintColor: UIColor?
    public var alpha: CGFloat?
    public var cornerRadius: CGFloat?
    public var border: BorderStyle?
    public var shadow: ShadowStyle?
    public var contentMode: UIViewContentMode?
    
    public init() {}
    
    public convenience init(closure: (ViewStyle) -> Void) {
        self.init()
        closure(self)
    }
}
