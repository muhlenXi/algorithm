//
//  EXViewController.swift
//  HelloSSVA
//
//  Created by muhlenXi on 2020/9/4.
//  Copyright © 2020 muhlenxi. All rights reserved.
//

import UIKit

class EXViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.red

        let insets = UIEdgeInsets(top: 50, left: 50, bottom: 50, right: 50)
        let redFrame = self.view.frame.inset(by: insets)
        let red = EXView(frame: redFrame, name: "RedView")
        red.backgroundColor = UIColor.red
        self.view.addSubview(red)

        let greenFrame = redFrame.inset(by: insets)
        let green = EXView(frame: greenFrame, name: "GreenView")
        green.backgroundColor = UIColor.green
        view.addSubview(green)

        let orangeFrame = CGRect(x: 20, y: 20, width: 100, height: 100)
        let orange = EXView(frame: orangeFrame, name: "OrangeView")
        orange.backgroundColor = UIColor.orange
        green.addSubview(orange)
        
        self.addGestures(orange)
        
    }
    
    
}

extension EXViewController {
    func addGestures(_ targetView: UIView) {
        targetView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.onTapOrangeView(_:)))
        targetView.addGestureRecognizer(tap)
    }
    
    @objc func onTapOrangeView(_ gesture: UITapGestureRecognizer) {
        if gesture.state == .ended {
            let animator = UIViewPropertyAnimator(duration: 0.2, curve: .easeInOut) {
                gesture.view!.center.y += 100
            }
            animator.startAnimation()
        }
    }
}
