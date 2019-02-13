//
//  FourthViewController.swift
//  CALayerDemo
//
//  Created by Michail Bondarenko on 2/13/19.
//  Copyright © 2019 Michail Bondarenko. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    var replicatorLayer: CAReplicatorLayer!
    var sourceLayer: CALayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        replicatorLayer = CAReplicatorLayer()
        sourceLayer = CALayer()
        
        self.view.layer.addSublayer(replicatorLayer)
        replicatorLayer.addSublayer(sourceLayer)
        startAnimation(delay: 0.1, replicates: 30)
    }
    
    override func viewWillLayoutSubviews() {
        replicatorLayer.frame = self.view.bounds
        replicatorLayer.position = self.view.center
        sourceLayer.frame = CGRect(x: 0.0, y: 0.0, width: 3, height: 17)
        sourceLayer.backgroundColor = UIColor.white.cgColor
        sourceLayer.position = self.view.center
        sourceLayer.anchorPoint = CGPoint(x: 0.0, y: 5.0)
    }
    
    func startAnimation(delay: TimeInterval, replicates: Int) {
        replicatorLayer.instanceCount = replicates
        let angle = CGFloat(2.0 * Double.pi) / CGFloat(replicates)
        replicatorLayer.instanceTransform = CATransform3DMakeRotation(angle, 0.0, 0.0, 1.0)
        replicatorLayer.instanceDelay = delay
        sourceLayer.opacity = 0
        let opacityAnimation = CABasicAnimation(keyPath: "opacity")
        opacityAnimation.fromValue = 1
        opacityAnimation.toValue = 0
        opacityAnimation.duration = Double(replicates) * delay
        opacityAnimation.repeatCount = Float.infinity
        sourceLayer.add(opacityAnimation, forKey: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
