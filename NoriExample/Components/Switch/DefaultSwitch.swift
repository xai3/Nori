//
//  DefaultSwitch.swift
//  Nori
//
//  Created by yukiasai on 2016/11/24.
//  Copyright © 2016年 yukiasai. All rights reserved.
//

import Nori

@IBDesignable class DefaultSwitch: StyleableSwitch {
    override func intrinsicStyle() -> SwitchStyle {
        return SwitchStyle {
            $0.onTintColor = Color.blue.color
        }
    }
}
