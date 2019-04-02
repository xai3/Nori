//
//  ShadowStyleTests.swift
//  Nori
//
//  Created by yukiasai on 2016/11/24.
//  Copyright © 2016年 yukiasai. All rights reserved.
//

import XCTest
@testable import Nori

class ShadowStyleTests: XCTestCase {
    func testShadowOffset() {
        let view = UIView()
        let style = ViewStyle {
            $0.shadow = ShadowStyle {
                $0.offset = CGSize(width: 10, height: 5)
            }
        }
        view.stylize(with: style)
        XCTAssertEqual(view.layer.shadowOffset, style.shadow?.offset)
    }
    
    func testShadowColor() {
        let view = UIView()
        let style = ViewStyle {
            $0.shadow = ShadowStyle {
                $0.color = UIColor.green
            }
        }
        view.stylize(with: style)
        XCTAssertEqual(view.layer.shadowColor, style.shadow?.color?.cgColor)
    }
     
    func testRadius() {
        let view = UIView()
        let style = ViewStyle {
            $0.shadow = ShadowStyle {
                $0.radius = 8
            }
        }
        view.stylize(with: style)
        XCTAssertEqual(view.layer.shadowRadius, style.shadow!.radius!, accuracy: CGFloat(Float.ulpOfOne))
    }
    
    func testShadowOpacity() {
        let view = UIView()
        let style = ViewStyle {
            $0.shadow = ShadowStyle {
                $0.opacity = 0.78
            }
        }
        view.stylize(with: style)
        XCTAssertEqual(view.layer.shadowOpacity, style.shadow!.opacity!, accuracy: Float.ulpOfOne)
    }
}
