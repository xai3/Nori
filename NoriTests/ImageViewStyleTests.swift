//
//  ImageViewStyleTests.swift
//  Nori
//
//  Created by yukiasai on 2016/11/24.
//  Copyright © 2016年 yukiasai. All rights reserved.
//

import XCTest
@testable import Nori

class ImageViewStyleTests: XCTestCase {
    func testSuperViewStyle() {
        let style = ImageViewStyle {
            $0.backgroundColor = UIColor.blue
        }
        let view = UIImageView()
        view.stylize(with: style)
        XCTAssertEqual(view.backgroundColor?.cgColor, style.backgroundColor?.cgColor)
    }
    
    func testTextColor() {
        let style = ImageViewStyle {
            $0.image = UIImage()
        }
        let view = UIImageView()
        view.stylize(with: style)
        XCTAssertNotNil(view.image)
    }
}
