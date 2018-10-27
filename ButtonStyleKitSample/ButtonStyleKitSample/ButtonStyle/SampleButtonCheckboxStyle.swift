//
//  SampleButtonCheckboxStyle.swift
//  ButtonStyleKitSample
//
//  Created by keygx on 2016/08/04.
//  Copyright © 2016年 keygx. All rights reserved.
//

import UIKit
import ButtonStyleKit

final class SampleButtonCheckboxStyle: ButtonStyleSelectableBase {
    
    private let buttonStyle = ButtonStyleBuilder()
    private var checkImageView = UIImageView()
    
    final override func initializedTrigger() {
        /*---------- Common Settings ----------*/
        buttonStyle
            .setButton(self)
            .setState(.all)
            .setFont(UIFont.systemFont(ofSize: 16))
            .setContentHorizontalAlignment(.left)
            .setContentVerticalAlignment(.center)
            .setTitleEdgeInsets(top: 0, right: 0, bottom: 0, left: 30)
            .setExclusiveTouch(true)
            .build()
        
        /*---------- For State Settings ----------*/
        buttonStyle
            .setState(.normal)
            .setTitle("checkbox")
            .build()
        
        checkImageView = buttonStyle.createImageView(frame: CGRect(x: 0, y: 4, width: 28, height: 28),
                                                     normal: UIImage(named: "checkbox")!, highlighted: UIImage(named: "checkbox_on")!)
        addSubview(checkImageView)
        
        buttonStyle.apply()
    }
    
    final override var currentState: ButtonStyleKit.ButtonState {
        didSet {
            /*---------- ButtonState Settings ----------*/
            switch currentState {
            case .selected:
                checkImageView.isHighlighted = true
            default:
                checkImageView.isHighlighted = false
            }
        }
    }
}
