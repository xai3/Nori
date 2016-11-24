//
//  LoginTextField.swift
//  Nori
//
//  Created by yukiasai on 2016/11/24.
//  Copyright © 2016年 yukiasai. All rights reserved.
//

import Nori

@IBDesignable class LoginTextField: StyleableTextField {
    override func intrinsicStyle() -> TextFieldStyle {
        return TextFieldStyle {
            $0.textColor = Color.darkGray.color
            $0.font = UIFont.systemFont(ofSize: FontSize.small.point)
            $0.borderStyle = .some(.none)
        }
    }
}
