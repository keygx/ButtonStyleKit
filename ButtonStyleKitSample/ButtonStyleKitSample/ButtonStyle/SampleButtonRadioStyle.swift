//
//  SampleButtonRadioStyle.swift
//  ButtonStyleKitSample
//
//  Created by keygx on 2016/08/04.
//  Copyright © 2016年 keygx. All rights reserved.
//

import UIKit
import ButtonStyleKit

final class SampleButtonRadioStyle: ButtonStyleSelectableBase {
    
    private let buttonStyle = ButtonStyleBuilder()
    private var checkImageView = UIImageView()
    
    final override func initializedTrigger() {
        
        let black = UIColor.black
        let lightGray = UIColor.lightGray
        
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
            .setTitleColor(black)
            .build()
        
        buttonStyle
            .setState(.selected)
            .setTitleColor(black)
            .build()
        
        buttonStyle
            .setState(.disabled)
            .setTitleColor(lightGray)
            .build()
        
        checkImageView = UIImageView(frame: CGRect(x: 0, y: 4, width: 28, height: 28))
        checkImageView.image = UIImage(named: "radio")
        addSubview(checkImageView)
        
        buttonStyle.apply()
    }
    
    final override var currentState: ButtonStyleKit.ButtonState {
        didSet {
            /*---------- ButtonState Settings ----------*/
            switch currentState {
            case .disabled:
                checkImageView.image = UIImage(named: "radio_off")
            case .selected:
                checkImageView.image = UIImage(named: "radio_on")
            default:
                checkImageView.image = UIImage(named: "radio")
            }
        }
    }
}
