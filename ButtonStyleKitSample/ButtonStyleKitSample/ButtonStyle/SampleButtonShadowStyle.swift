//
//  SampleButtonShadowStyle.swift
//  ButtonStyleKitSample
//
//  Created by keygx on 2018/09/21.
//  Copyright © 2018年 keygx. All rights reserved.
//

import UIKit
import ButtonStyleKit

class SampleButtonShadowStyle: ButtonStyleStandardBase {
    private let buttonStyle = ButtonStyleBuilder()
    
    final override func initializedTrigger() {
        let blue = UIColor(red: 0.0/255.0, green: 122.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        let blueHighlighted = UIColor(red: 0.0/255.0, green: 100.0/255.0, blue: 210.0/255.0, alpha: 1.0)
        let gray = UIColor.lightGray
        let white = UIColor.white
        let black = UIColor.black
        
        /*---------- Common Settings ----------*/
        buttonStyle
            .setButton(self)
            .setState(.all)
            .setTitle("Shadow")
            .setTitleColor(white)
            .setFont(UIFont.boldSystemFont(ofSize: 16))
            .setCornerRadius(8.0)
            .setShadowColor(black)
            .setShadowOffset(CGSize(width: 1.0, height: 1.0))
            .setShadowOpacity(0.3)
            .setShadowRadius(2.0)
            .setExclusiveTouch(true)
            .build()
        
        /*---------- For State Settings ----------*/
        buttonStyle
            .setState(.normal)
            .setBackgroundColor(blue)
            .build()
        
        buttonStyle
            .setState(.highlighted)
            .setBackgroundColor(blueHighlighted)
            .build()
        
        buttonStyle
            .setState(.disabled)
            .setBackgroundColor(gray)
            .build()
        
        buttonStyle.apply()
    }
    
    final override var currentState: ButtonStyleKit.ButtonState {
        didSet {
            buttonStyle.apply()
        }
    }
}
