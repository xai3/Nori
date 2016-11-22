//
//  UISwitch+Nori.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

open class StyleableSwitch: UISwitch {
    open override func awakeFromNib() {
        super.awakeFromNib()
        #if !TARGET_INTERFACE_BUILDER
            setupStyle()
        #endif
    }
    
    open override func didMoveToWindow() {
        super.didMoveToWindow()
        #if TARGET_INTERFACE_BUILDER
            setupStyle()
        #endif
    }
    
    open func setupStyle() {
        stylize(with: intrinsicStyle())
    }
    
    open func intrinsicStyle() -> SwitchStyle {
        return SwitchStyle()
    }
}
