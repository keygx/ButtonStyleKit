//
//  ButtonGroup.swift
//  ButtonStyleKitSample
//
//  Created by keygx on 2016/08/27.
//  Copyright © 2016年 keygx. All rights reserved.
//

import UIKit
import ButtonStyleKit

struct RadioGroup {

    var selectedValues: [Bool] {
        return group.map { $0.value }
    }
    
    private var group: [SampleButtonRadioStyle]
    
    init(buttons: inout [SampleButtonRadioStyle]) {
        group = buttons
    }
    
    // Enabled / Desabled
    func enabled() {
        group.forEach {
            $0.currentState = .normal
        }
    }
    
    func disabled() {
        group.forEach {
            $0.currentState = .disabled
        }
    }
    
    // Select Action
    func select(index: Int) {
        
        
        if group.endIndex <= index {
            return
        }
        
        if group[index].value == true {
            group[index].value = false
            return
        }
        
        unSelectAll()
        group[index].value = true
    }
    
    func selectAll() {
        group.forEach {
            $0.value = true
        }
    }
    
    func unSelectAll() {
        group.forEach {
            $0.value = false
        }
    }
    
    // Print
    func printValues() {
        print(selectedValues)
    }
}
