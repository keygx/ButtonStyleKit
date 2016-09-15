//
//  ButtonStyleStandardBase.swift
//  ButtonStyleKit
//
//  Created by keygx on 2016/08/04.
//  Copyright © 2016年 keygx. All rights reserved.
//

import UIKit

open class ButtonStyleStandardBase: ButtonStyleKit {
    
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
    
    override public final var isHighlighted: Bool {
        set {
            if newValue {
                currentState = .highlighted
            } else {
                currentState = .normal
            }
        }
        get {
            return super.isHighlighted
        }
    }
}
