//
//  ButtonStyleBuilder.swift
//  ButtonStyleKit
//
//  Created by keygx on 2016/08/04.
//  Copyright © 2016年 keygx. All rights reserved.
//

import UIKit

private class Data<T> {
    var normal:      T?
    var highlighted: T?
    var selected:    T?
    var disabled:    T?
}

open class ButtonStyleBuilder {
    // Basic
    private weak var button: ButtonStyleKit!
    private var state: ButtonStyleKit.ButtonState = .normal
    // Styles
    private var font = Data<UIFont>()
    private var borderWidth = Data<CGFloat>()
    private var borderColor = Data<UIColor>()
    private var cornerRadius = Data<CGFloat>()
    private var opacity = Data<Float>()
    private var backgroundColor = Data<UIColor>()
    private var tintColor = Data<UIColor>()
    private var shadowColor = Data<UIColor>()
    private var shadowOpacity = Data<Float>()
    private var shadowOffset = Data<CGSize>()
    private var shadowRadius = Data<CGFloat>()
    private var shadowPath = Data<CGPath>()
    private var clipsToBounds = Data<Bool>()
    private var masksToBounds = Data<Bool>()
    private var isExclusiveTouch = Data<Bool>()
    private var contentHorizontalAlignment = Data<UIControl.ContentHorizontalAlignment>()
    private var contentVerticalAlignment = Data<UIControl.ContentVerticalAlignment>()
    private var titleEdgeInsets = Data<UIEdgeInsets>()
    private var contentEdgeInsets = Data<UIEdgeInsets>()
    private var imageEdgeInsets = Data<UIEdgeInsets>()
    private var reversesTitleShadowWhenHighlighted = Data<Bool>()
    private var adjustsImageWhenHighlighted = Data<Bool>()
    private var adjustsImageWhenDisabled = Data<Bool>()
    private var showsTouchWhenHighlighted = Data<Bool>()
    
    public init() {}
    
    // Chain
    public func setButton(_ button: ButtonStyleKit) -> Self {
        self.button = button
        return self
    }
    
    public func setState(_ state: ButtonStyleKit.ButtonState) -> Self {
        self.state = state
        return self
    }
    
    public func setTitle(_ title: String) -> Self {
        if let state = state.getState() {
            button.setTitle(title, for: state)
        } else {
            button.setTitle(title, for: .normal)
            button.setTitle(title, for: .highlighted)
            button.setTitle(title, for: .selected)
            button.setTitle(title, for: .disabled)
        }
        return self
    }
    
    public func setTitleColor(_ titleColor: UIColor) -> Self {
        if let state = state.getState() {
            button.setTitleColor(titleColor, for: state)
        } else {
            button.setTitleColor(titleColor, for: .normal)
            button.setTitleColor(titleColor, for: .highlighted)
            button.setTitleColor(titleColor, for: .selected)
            button.setTitleColor(titleColor, for: .disabled)
        }
        return self
    }
    
    public func setTitleShadowColor(_ titleShadowColor: UIColor) -> Self {
        if let state = state.getState() {
            button.setTitleShadowColor(titleShadowColor, for: state)
        } else {
            button.setTitleShadowColor(titleShadowColor, for: .normal)
            button.setTitleShadowColor(titleShadowColor, for: .highlighted)
            button.setTitleShadowColor(titleShadowColor, for: .selected)
            button.setTitleShadowColor(titleShadowColor, for: .disabled)
        }
        return self
    }
    
    public func setImage(_ image: UIImage) -> Self {
        if let state = state.getState() {
            button.setImage(image, for: state)
        } else {
            button.setImage(image, for: .normal)
            button.setImage(image, for: .highlighted)
            button.setImage(image, for: .selected)
            button.setImage(image, for: .disabled)
        }
        return self
    }
    
    public func setBackgroundImage(_ backgroundImage: UIImage) -> Self {
        if let state = state.getState() {
            button.setBackgroundImage(backgroundImage, for: state)
        } else {
            button.setBackgroundImage(backgroundImage, for: .normal)
            button.setBackgroundImage(backgroundImage, for: .highlighted)
            button.setBackgroundImage(backgroundImage, for: .selected)
            button.setBackgroundImage(backgroundImage, for: .disabled)
        }
        return self
    }
    
    public func setAttributedTitle(_ attributedTitle: NSAttributedString) -> Self {
        if let state = state.getState() {
            button.setAttributedTitle(attributedTitle, for: state)
        } else {
            button.setAttributedTitle(attributedTitle, for: .normal)
            button.setAttributedTitle(attributedTitle, for: .highlighted)
            button.setAttributedTitle(attributedTitle, for: .selected)
            button.setAttributedTitle(attributedTitle, for: .disabled)
        }
        return self
    }
    
    public func setFont(_ font: UIFont) -> Self {
        setProperty(param: self.font, value: font, state: state)
        return self
    }
    
    public func setBorderWidth(_ borderWidth: CGFloat) -> Self {
        setProperty(param: self.borderWidth, value: borderWidth, state: state)
        return self
    }
    
    public func setBorderColor(_ borderColor: UIColor) -> Self {
        setProperty(param: self.borderColor, value: borderColor, state: state)
        return self
    }
    
    public func setCornerRadius(_ cornerRadius: CGFloat) -> Self {
        setProperty(param: self.cornerRadius, value: cornerRadius, state: state)
        return self
    }
    
    public func setOpacity(_ opacity: Float) -> Self {
        setProperty(param: self.opacity, value: opacity, state: state)
        return self
    }
    
    public func setBackgroundColor(_ backgroundColor: UIColor) -> Self {
        setProperty(param: self.backgroundColor, value: backgroundColor, state: state)
        return self
    }
    
    public func setTintColor(_ tintColor: UIColor) -> Self {
        setProperty(param: self.tintColor, value: tintColor, state: state)
        return self
    }
    
    public func setShadowColor(_ shadowColor: UIColor) -> Self {
        setProperty(param: self.shadowColor, value: shadowColor, state: state)
        return self
    }
    
    public func setShadowOpacity(_ shadowOpacity: Float) -> Self {
        setProperty(param: self.shadowOpacity, value: shadowOpacity, state: state)
        return self
    }
    
    public func setShadowOffset(_ shadowOffset: CGSize) -> Self {
        setProperty(param: self.shadowOffset, value: shadowOffset, state: state)
        return self
    }
    
    public func setShadowRadius(_ shadowRadius: CGFloat) -> Self {
        setProperty(param: self.shadowRadius, value: shadowRadius, state: state)
        return self
    }
    
    public func setShadowPath(_ shadowPath: CGPath) -> Self {
        setProperty(param: self.shadowPath, value: shadowPath, state: state)
        return self
    }
    
    public func setMasksToBounds(_ masksToBounds: Bool) -> Self {
        setProperty(param: self.masksToBounds, value: masksToBounds, state: state)
        return self
    }
    
    public func setClipsToBounds(_ clipsToBounds: Bool) -> Self {
        setProperty(param: self.clipsToBounds, value: clipsToBounds, state: state)
        return self
    }
    
    public func setExclusiveTouch(_ isExclusiveTouch: Bool) -> Self {
        setProperty(param: self.isExclusiveTouch, value: isExclusiveTouch, state: state)
        return self
    }
    
    public func setContentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> Self {
        setProperty(param: self.contentHorizontalAlignment, value: contentHorizontalAlignment, state: state)
        return self
    }
    
    public func setContentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> Self {
        setProperty(param: self.contentVerticalAlignment, value: contentVerticalAlignment, state: state)
        return self
    }
    
    public func setTitleEdgeInsets(top: CGFloat, right: CGFloat, bottom: CGFloat, left: CGFloat) -> Self {
        setProperty(param: self.titleEdgeInsets, value: UIEdgeInsets(top: top, left: left, bottom: bottom, right: right), state: state)
        return self
    }
    
    public func setContentEdgeInsets(top: CGFloat, right: CGFloat, bottom: CGFloat, left: CGFloat) -> Self {
        setProperty(param: self.contentEdgeInsets, value: UIEdgeInsets(top: top, left: left, bottom: bottom, right: right), state: state)
        return self
    }
    
    public func setImageEdgeInsets(top: CGFloat, right: CGFloat, bottom: CGFloat, left: CGFloat) -> Self {
        setProperty(param: self.imageEdgeInsets, value: UIEdgeInsets(top: top, left: left, bottom: bottom, right: right), state: state)
        return self
    }
    
    public func setReversesTitleShadowWhenHighlighted(_ bool: Bool) -> Self {
        setProperty(param: self.reversesTitleShadowWhenHighlighted, value: bool, state: state)
        return self
    }
    
    public func setAdjustsImageWhenHighlighted(_ bool: Bool) -> Self {
        setProperty(param: self.adjustsImageWhenHighlighted, value: bool, state: state)
        return self
    }
    
    public func setAdjustsImageWhenDisabled(_ bool: Bool) -> Self {
        setProperty(param: self.adjustsImageWhenDisabled, value: bool, state: state)
        return self
    }
    
    public func setShowsTouchWhenHighlighted(_ bool: Bool) -> Self {
        setProperty(param: self.showsTouchWhenHighlighted, value: bool, state: state)
        return self
    }
    
    private func setProperty<T>(param: Data<T>, value: T, state: ButtonStyleKit.ButtonState) {
        switch state {
        case .all:
            param.normal = value
            param.highlighted = value
            param.selected = value
            param.disabled = value
        case .normal:
            param.normal = value
        case .highlighted:
            param.highlighted = value
        case .selected:
            param.selected = value
        case .disabled:
            param.disabled = value
        }
    }
    
    // Appear
    public func build() {
        if let font = attachProperty(param: font, state: state) {
            button.titleLabel?.font = font
        }
        
        if let borderWidth = attachProperty(param: borderWidth, state: state) {
            button.layer.borderWidth = borderWidth
        }
        
        if let borderColor = attachProperty(param: borderColor, state: state) {
            button.layer.borderColor = borderColor.cgColor
        }
        
        if let cornerRadius = attachProperty(param: cornerRadius, state: state) {
            button.layer.cornerRadius = cornerRadius
        }
        
        if let opacity = attachProperty(param: opacity, state: state) {
            button.layer.opacity = opacity
        }
        
        if let backgroundColor = attachProperty(param: backgroundColor, state: state) {
            button.layer.backgroundColor = backgroundColor.cgColor
        }
        
        if let tintColor = attachProperty(param: tintColor, state: state) {
            button.tintColor = tintColor
        }
        
        if let shadowColor = attachProperty(param: shadowColor, state: state) {
            button.layer.shadowColor = shadowColor.cgColor
        }
        
        if let shadowOpacity = attachProperty(param: shadowOpacity, state: state) {
            button.layer.shadowOpacity = shadowOpacity
        }
        
        if let shadowOffset = attachProperty(param: shadowOffset, state: state) {
            button.layer.shadowOffset = shadowOffset
        }
        
        if let shadowRadius = attachProperty(param: shadowRadius, state: state) {
            button.layer.shadowRadius = shadowRadius
        }
        
        if let shadowPath = attachProperty(param: shadowPath, state: state) {
            button.layer.shadowPath = shadowPath
        }
        
        if let clipsToBounds = attachProperty(param: clipsToBounds, state: state) {
            button.clipsToBounds = clipsToBounds
        }
        
        if let masksToBounds = attachProperty(param: masksToBounds, state: state) {
            button.layer.masksToBounds = masksToBounds
        }
        
        if let isExclusiveTouch = attachProperty(param: isExclusiveTouch, state: state) {
            button.isExclusiveTouch = isExclusiveTouch
        }
        
        if let contentHorizontalAlignment = attachProperty(param: contentHorizontalAlignment, state: state) {
            button.contentHorizontalAlignment = contentHorizontalAlignment
        }
        
        if let contentVerticalAlignment = attachProperty(param: contentVerticalAlignment, state: state) {
            button.contentVerticalAlignment = contentVerticalAlignment
        }
        
        if let titleEdgeInsets = attachProperty(param: titleEdgeInsets, state: state) {
            button.titleEdgeInsets = titleEdgeInsets
        }
        
        if let contentEdgeInsets = attachProperty(param: contentEdgeInsets, state: state) {
            button.contentEdgeInsets = contentEdgeInsets
        }
        
        if let imageEdgeInsets = attachProperty(param: imageEdgeInsets, state: state) {
            button.imageEdgeInsets = imageEdgeInsets
        }
        
        if let reversesTitleShadowWhenHighlighted = attachProperty(param: reversesTitleShadowWhenHighlighted, state: state) {
            button.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted
        }
        
        if let adjustsImageWhenHighlighted = attachProperty(param: adjustsImageWhenHighlighted, state: state) {
            button.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted
        }
        
        if let adjustsImageWhenDisabled = attachProperty(param: adjustsImageWhenDisabled, state: state) {
            button.adjustsImageWhenDisabled = adjustsImageWhenDisabled
        }
        
        if let showsTouchWhenHighlighted = attachProperty(param: showsTouchWhenHighlighted, state: state) {
            button.showsTouchWhenHighlighted = showsTouchWhenHighlighted
        }
    }
    
    public func apply() {
        guard let button = button else { return }
        self.state = button.currentState
        build()
    }
    
    private func attachProperty<T>(param: Data<T>, state: ButtonStyleKit.ButtonState) -> T? {
        switch state {
        case .all:
            return nil
        case .normal:
            return param.normal
        case .highlighted:
            return param.highlighted
        case .selected:
            return param.selected
        case .disabled:
            return param.disabled
        }
    }
}

// Helpers
extension ButtonStyleBuilder {
    
    public final func createViewToImage(color: UIColor, frame: CGRect? = nil) -> UIImage? {
        // View
        var rect = CGRect()
        rect = {
            if let f = frame {
                return f
            } else {
                return CGRect(x: 0, y: 0, width: 100, height: 100)
            }
        }()
        
        let view = UIView(frame: rect)
        view.backgroundColor = color
        // Image
        let scale = UIScreen.main.scale
        UIGraphicsBeginImageContextWithOptions(view.frame.size, false, scale)
        guard let context: CGContext = UIGraphicsGetCurrentContext() else {
            return nil
        }
        view.layer.render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
    public final func createImageView(frame: CGRect, normal: String, highlighted: String?) -> UIImageView {
        let imageView = UIImageView(frame: frame)
        imageView.image = UIImage(named: normal)
        if let highlighted = highlighted {
            imageView.highlightedImage = UIImage(named: highlighted)
        }
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }
    
    public final func createImageView(frame: CGRect, normal: UIImage, highlighted: UIImage?) -> UIImageView {
        let imageView = UIImageView(frame: frame)
        imageView.image = normal
        if let highlighted = highlighted {
            imageView.highlightedImage = highlighted
        }
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }
}
