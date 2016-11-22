//
//  SwitchStyle.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public class SwitchStyle: ViewStyle {
    public var onTintColor: UIColor?
    
    public convenience init(closure: (SwitchStyle) -> Void) {
        self.init()
        closure(self)
    }
}
