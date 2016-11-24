//
//  TextFieldStyleTests.swift
//  Nori
//
//  Created by yukiasai on 2016/11/24.
//  Copyright © 2016年 yukiasai. All rights reserved.
//

import XCTest
@testable import Nori

class TextFieldStyleTests: XCTestCase {
    func testSuperViewStyle() {
        let style = TextFieldStyle {
            $0.backgroundColor = UIColor.blue
        }
        let view = UITextField()
        view.stylize(with: style)
        XCTAssertEqual(view.backgroundColor?.cgColor, style.backgroundColor?.cgColor)
    }
    
    func testTextColor() {
        let style = TextFieldStyle {
            $0.textColor = UIColor.green
        }
        let view = UITextField()
        view.stylize(with: style)
        XCTAssertEqual(view.textColor?.cgColor, style.textColor?.cgColor)
    }
    
    func testFont() {
        let style = TextFieldStyle {
            $0.font = UIFont(name: "Helvetica-Bold", size: 32)
        }
        let view = UITextField()
        view.stylize(with: style)
        XCTAssertEqual(view.font, style.font)
    }
    
    func testAlignment() {
        let style = TextFieldStyle {
            $0.align = .right
        }
        let view = UITextField()
        view.stylize(with: style)
        XCTAssertEqual(view.textAlignment, style.align)
    }
     
    func testBorderStyle() {
        let style = TextFieldStyle {
            $0.borderStyle = .line
        }
        let view = UITextField()
        view.stylize(with: style)
        XCTAssertEqual(view.borderStyle, style.borderStyle)
    }
}
