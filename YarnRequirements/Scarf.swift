//
//  Scarf.swift
//  YarnRequirements
//
//  Created by Deborah Engelmeyer on 5/29/16.
//  Copyright © 2016 The Inquisitive Introvert. All rights reserved.
//

import UIKit

// A scarf is a retangular bit of knitted fabric
class Scarf: Project {

    // length of the scarf
    var length:Double = 72.0;
    // Units for length
    var lengthUnits:ShortLengthUnits = ShortLengthUnits.Inches;
    
    // length of the scarf
    var width:Double = 12.0;
    // Units for length
    var widthUnits:ShortLengthUnits = ShortLengthUnits.Inches;
    
    // Track the scarf object
    var scarf:Scarf?
    
    // provide a means of defining a project name and image
    override init(name:String, thumb:UIImage, image:UIImage, control:String) {
        super.init(name: name, thumb: thumb, image: image, control: control)
        controller = ScarfController()
    }
    
    override func calcYarnRequired()
    {
        var _length = length
        if (lengthUnits != ShortLengthUnits.CM)
        {
            _length = length * inches2cm
        }
        var _width = width
        if (widthUnits != ShortLengthUnits.CM)
        {
            _width = width * inches2cm
        }
        super.calcYarnRequired(_length, siWidth: _width)
    }
    
}
// A blanket is basically a wide scarf, so just change the default width
class Blanket : Scarf {

    // provide a means of defining a project name and image
    override init(name:String, thumb:UIImage, image:UIImage, control:String) {
        super.init(name: name, thumb: thumb, image: image, control: control)
        width = 60.0;
    }
    
}

