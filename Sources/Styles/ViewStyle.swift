//
//  ViewStyle.swift
//  Nori
//
//  Created by yukiasai on 11/22/16.
//  Copyright © 2016 yukiasai. All rights reserved.
//

public class ViewStyle {
    public var backgroundColor: UIColor?
    public var tintColor: UIColor?
    public var alpha: CGFloat?
    public var cornerStyle: CornerStyle?
    public var border: BorderStyle?
    public var shadow: ShadowStyle?
    public var contentMode: UIView.ContentMode?
    
    public init() {}
    
    public convenience init(closure: (ViewStyle) -> Void) {
        self.init()
        closure(self)
    }
    
    public func stylizeTo(view: UIView) {
        view.backgroundColor ??= backgroundColor
        view.tintColor ??= tintColor
        view.alpha ??= alpha
        view.layer.borderWidth ??= border?.width
        view.layer.borderColor ??= border?.color?.cgColor
        view.layer.shadowOffset ??= shadow?.offset
        view.layer.shadowRadius ??= shadow?.radius
        view.layer.shadowOpacity ??= shadow?.opacity
        view.layer.shadowColor ??= shadow?.color?.cgColor
        view.layer.masksToBounds = shadow != nil
        view.contentMode ??= contentMode
        stylizeCornerStyle(view: view, cornerStyle: cornerStyle)
    }

    private func stylizeCornerStyle(view: UIView, cornerStyle: CornerStyle?) {
        guard let cornerStyle = cornerStyle else {
            view.layer.mask = nil
            return
        }
        let path = UIBezierPath(roundedRect: view.bounds, byRoundingCorners: cornerStyle.corner, cornerRadii: CGSize(width: cornerStyle.radius, height: cornerStyle.radius))
        let mask = CAShapeLayer()
        mask.frame = view.bounds
        mask.path = path.cgPath
        view.layer.mask = mask
    }
}
