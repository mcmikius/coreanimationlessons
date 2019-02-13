//
//  SecondViewController.swift
//  CALayerDemo
//
//  Created by Michail Bondarenko on 2/13/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var newGradientLayer: CAGradientLayer! {
        didSet {
            newGradientLayer.startPoint = CGPoint(x: 1, y: 0)
            newGradientLayer.endPoint = CGPoint(x: 0, y: 1)
            let startColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1).cgColor
            let endColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).cgColor
            newGradientLayer.colors = [startColor, endColor]
            newGradientLayer.locations = [0.2, 0.8]
            
        }
        
    }
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.size.height / 2
            imageView.layer.masksToBounds = true
            let borderColor = UIColor.white
            imageView.layer.borderColor = borderColor.cgColor
            imageView.layer.borderWidth = 10
            let shadowColor = UIColor.black
            imageView.layer.shadowColor = shadowColor.cgColor
            imageView.layer.shadowOffset = CGSize(width: 0, height: 10)
            imageView.layer.shadowOpacity = 1
            imageView.layer.shadowRadius = 10
    
        }
        
        
    }
    @IBOutlet weak var button: UIButton! {
        didSet {
            button.layer.cornerRadius = button.frame.size.height / 2
            button.layer.shadowOffset = CGSize(width: 0, height: 10)
            button.layer.shadowOpacity = 1
            button.layer.shadowRadius = 10
        }
    }
    
    override func viewDidLayoutSubviews() {
        newGradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newGradientLayer = CAGradientLayer()
        view.layer.insertSublayer(newGradientLayer, at: 0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
