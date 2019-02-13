//
//  View.swift
//  CALayerDemo
//
//  Created by Michail Bondarenko on 2/13/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

@IBDesignable
class View: UIView {
    
    private var size = CGSize()
    @IBInspectable var cornerRadiusSize: CGFloat = 0 {
        didSet {
            size = CGSize(width: cornerRadiusSize, height: cornerRadiusSize)
        }
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.topLeft, .bottomRight], cornerRadii: size).cgPath
        layer.mask = shapeLayer
    }
    
    override func prepareForInterfaceBuilder() {
        setNeedsLayout()
    }

}
