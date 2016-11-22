//
//  BorderStyle.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public class BorderStyle {
    var color: UIColor?
    var width: CGFloat?
    
    public init() { }
    
    public convenience init(closure: (BorderStyle) -> Void) {
        self.init()
        closure(self)
    }
}
