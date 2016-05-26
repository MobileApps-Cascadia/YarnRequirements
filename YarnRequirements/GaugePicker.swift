//
//  GaugePicker.swift
//  YarnRequirements
//
//  Created by Deb on 5/22/16.
//  Copyright © 2016 The Inquisitive Introvert. All rights reserved.
//

import UIKit

class GaugePicker: PickerView {

    // Set the delegate and dataSource
    override func loaded(del:UIPickerViewDelegate)
    {
        super.loaded(del)
        text = ["sts/inch", "sts/4inch", "sts/10cm"]
    }
    
}
