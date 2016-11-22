//
//  PositiveButton.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

import Nori

@IBDesignable class PositiveButton: StyleableButton {
    override func intrinsicStyle(for state: UIControlState) -> ButtonStyle {
        return ButtonStyle {
            $0.backgroundColor = Color.green.color
            $0.cornerRadius = 10
            $0.title = LabelStyle {
                $0.textColor = UIColor.white
            }
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 0, height: 42)
    }
}
