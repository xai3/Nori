//
//  TextFieldStyle.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public class TextFieldStyle: ViewStyle {
    public var textColor: UIColor?
    public var font: UIFont?
    public var align: NSTextAlignment?
    public var borderStyle: UITextField.BorderStyle?
    
    public convenience init(closure: (TextFieldStyle) -> Void) {
        self.init()
        closure(self)
    }
    
    public func stylizeTo(textField: UITextField) {
        textField.textColor ??= textColor
        textField.font ??= font
        textField.borderStyle ??= borderStyle
        textField.textAlignment ??= align
    }
}
