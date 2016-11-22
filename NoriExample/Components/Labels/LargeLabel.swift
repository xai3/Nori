//
//  LargeLabel.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

import Nori

@IBDesignable class LargeLabel: StyleableLabel {
    override func intrinsicStyle() -> LabelStyle {
        return LabelStyle {
            $0.textColor = FontColor.black.color
            $0.font = UIFont.systemFont(ofSize: FontSize.large.point)
        }
    }
}
