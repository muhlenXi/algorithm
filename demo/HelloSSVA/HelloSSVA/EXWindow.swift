//
//  EXWindow.swift
//  HelloSSVA
//
//  Created by muhlenXi on 2020/9/4.
//  Copyright © 2020 muhlenxi. All rights reserved.
//

import UIKit

class EXWindow: UIWindow {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("\(#function)")
        self.backgroundColor = UIColor.yellow
    }
    
    override init(windowScene: UIWindowScene) {
        super.init(windowScene: windowScene)
        print("\(#function)")
        self.backgroundColor = UIColor.yellow
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        print("EXWindow -> \(#function)")
        return super.hitTest(point, with: event)
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let result = super.point(inside: point, with: event)
        print("EXWindow -> \(#function) \(result)")
        return result
    }
}
