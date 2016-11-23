//
//  BorderStyleTests.swift
//  Nori
//
//  Created by yukiasai on 2016/11/24.
//  Copyright © 2016年 yukiasai. All rights reserved.
//

import XCTest
@testable import Nori

class BorderStyleTests: XCTestCase {
    func testBorderColor() {
        let view = UIView()
        let style = ViewStyle {
            $0.border = BorderStyle {
                $0.color = UIColor.red
            }
        }
        view.stylize(with: style)
        XCTAssertEqual(view.layer.borderColor, style.border?.color?.cgColor)
    }
    
    func testBorderWidth() {
        let view = UIView()
        let style = ViewStyle {
            $0.border = BorderStyle {
                $0.width = 5
            }
        }
        view.stylize(with: style)
        XCTAssertEqualWithAccuracy(view.layer.borderWidth, style.border!.width!, accuracy: CGFloat(FLT_EPSILON))
    }
}
