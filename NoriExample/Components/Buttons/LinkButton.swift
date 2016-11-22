//
//  LinkButton.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

import Nori

@IBDesignable class LinkButton: StyleableButton {
    override func intrinsicStyle(for state: UIControlState) -> ButtonStyle {
        return ButtonStyle {
            $0.backgroundColor = UIColor.clear
            $0.title = LabelStyle {
                $0.textColor = Color.blue.color
            }
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 0, height: 32)
    }
}
