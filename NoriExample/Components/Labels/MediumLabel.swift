//
//  MediumLabel.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

import Nori

@IBDesignable class MediumLabel: StyleableLabel {
    override func intrinsicStyle() -> LabelStyle {
        return LabelStyle {
            $0.textColor = Color.black.color
            $0.font = UIFont.systemFont(ofSize: FontSize.medium.point)
        }
    }
}
