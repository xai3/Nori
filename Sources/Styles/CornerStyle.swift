//
//  CornerStyle.swift
//  Nori
//
//  Created by yukiasai on 2019/04/03.
//  Copyright © 2019 yukiasai. All rights reserved.
//

import UIKit

public struct CornerStyle {
    public let corner: UIRectCorner
    public let radius: CGFloat

    public init(corner: UIRectCorner = .allCorners, radius: CGFloat) {
        self.corner = corner
        self.radius = radius
    }
}
