//
//  Operators.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

infix operator ??=

public func ??=<T>(left: inout T?, right: T?) {
    left = right ?? left
}

public func ??=<T>(left: inout T!, right: T?) {
    left = right ?? left
}

public func ??=<T>(left: inout T, right: T?) {
    left = right ?? left
}
