//
//  StyleableButton.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

open class StyleableButton: UIButton {
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
    
    override open var isEnabled: Bool {
        didSet { setupStyle(for: state) }
    }
    
    open func setupStyle() {
        setupStyle(for: state)
    }
    
    open func setupStyle(for state: UIControl.State) {
        let style = intrinsicStyle(for: state)
        stylize(with: style, for: state)
    }
    
    open func intrinsicStyle(for state: UIControl.State) -> ButtonStyle {
        return ButtonStyle()
    }
}
