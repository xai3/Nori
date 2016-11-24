//
//  SwitchStyleTests.swift
//  Nori
//
//  Created by yukiasai on 2016/11/24.
//  Copyright © 2016年 yukiasai. All rights reserved.
//

import XCTest
@testable import Nori

class SwitchStyleTests: XCTestCase {
    func testSuperViewStyle() {
        let view = UISwitch()
        let style = SwitchStyle {
            $0.backgroundColor = UIColor.blue
        }
        view.stylize(with: style)
        XCTAssertEqual(view.backgroundColor?.cgColor, style.backgroundColor?.cgColor)
    }
    
    func testOnTintColor() {
        let view = UISwitch()
        let style = SwitchStyle {
            $0.onTintColor = UIColor.blue
        }
        view.stylize(with: style)
        XCTAssertEqual(view.onTintColor?.cgColor, style.onTintColor?.cgColor)
    }
}
