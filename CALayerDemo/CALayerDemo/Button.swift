//
//  Button.swift
//  CALayerDemo
//
//  Created by Michail Bondarenko on 2/13/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

@IBDesignable
class Button: UIButton {
    
    private var cornerRadius = CGSize()
    
    @IBInspectable var cornerRadii: CGFloat = 0 {
        didSet {
            cornerRadius = CGSize(width: cornerRadii, height: cornerRadii)
        }
    }
    
    @IBInspectable var color: UIColor = .green
    
    var path: UIBezierPath?
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.topLeft, .topRight], cornerRadii: cornerRadius)
        color.setFill()
        path?.fill()
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        if let path = path {
            return path.contains(point)
        }
        return false
    }

}
