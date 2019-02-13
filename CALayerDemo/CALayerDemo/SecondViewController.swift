//
//  SecondViewController.swift
//  CALayerDemo
//
//  Created by Michail Bondarenko on 2/13/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.size.height / 2
            imageView.layer.masksToBounds = true
            let borderColor = UIColor.white
            imageView.layer.borderColor = borderColor.cgColor
            imageView.layer.borderWidth = 10
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
