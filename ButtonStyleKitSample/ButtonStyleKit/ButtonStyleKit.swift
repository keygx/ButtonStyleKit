//
//  ButtonStyleKit.swift
//  ButtonStyleKit
//
//  Created by keygx on 2016/08/04.
//  Copyright © 2016年 keygx. All rights reserved.
//

import UIKit

open class ButtonStyleKit: UIButton {
    
    public enum ButtonState: Int {
        case all
        case normal
        case highlighted
        case selected
        case disabled
        
        func getState() -> UIControl.State? {
            switch self {
            case .all:
                return nil
            case .normal:
                return UIControl.State.normal
            case .highlighted:
                return UIControl.State.highlighted
            case .selected:
                return UIControl.State.selected
            case .disabled:
                return UIControl.State.disabled
            }
        }
    }
    
    open var currentState: ButtonState = .normal {
        didSet {
            switch currentState {
            case .all:
                break
            case .normal:
                super.isEnabled = true
                super.isHighlighted = false
                super.isSelected = false
            
            case .highlighted:
                super.isEnabled = true
                super.isHighlighted = true
                super.isSelected = false
                
            case .selected:
                super.isEnabled = true
                super.isHighlighted = false
                super.isSelected = true
                
            case .disabled:
                super.isEnabled = false
                super.isHighlighted = false
                super.isSelected = false
            }
        }
    }
    
    private var clickHandler: ((ButtonStyleKit) -> Void)?
    
    // init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initialize()
    }
    
    private func initialize() {
        adjustsImageWhenHighlighted = false
        adjustsImageWhenDisabled = false
        showsTouchWhenHighlighted = false
        addTarget(self, action: #selector(ButtonStyleKit.didTapped(_:)), for: .touchUpInside)
        currentState = .normal
        
        initializedTrigger()
    }
    
    open func initializedTrigger() {}
    
    // Event Handling
    @objc private func didTapped(_ sender: UIButton) {
        if let clickHandler = clickHandler {
            clickHandler(self)
        }
    }
    
    public final func setClickHandler(handler: @escaping ((ButtonStyleKit) -> Void)) {
        clickHandler = handler
    }
}
