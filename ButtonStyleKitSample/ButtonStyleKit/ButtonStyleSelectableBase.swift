//
//  ButtonStyleSelectableBase.swift
//  ButtonStyleKit
//
//  Created by keygx on 2016/08/04.
//  Copyright © 2016年 keygx. All rights reserved.
//

import UIKit

open class ButtonStyleSelectableBase: ButtonStyleKit {
    
    override public final var isEnabled: Bool {
        set {
            if newValue {
                currentState = .normal
            } else {
                currentState = .disabled
            }
        }
        get {
            return super.isEnabled
        }
    }
    
    override public final var isSelected: Bool {
        set {
            if newValue {
                currentState = .selected
            } else {
                currentState = .normal
            }
        }
        get {
            return super.isSelected
        }
    }
    
    public final var value: Bool = false {
        didSet {
            currentState = {
                if value {
                    return .selected
                } else {
                    return .normal
                }
            }()
        }
    }
}
