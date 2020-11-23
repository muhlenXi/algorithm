//
//  EXView.swift
//  HelloSSVA
//
//  Created by muhlenXi on 2020/9/4.
//  Copyright © 2020 muhlenxi. All rights reserved.
//

import UIKit

class EXView: UIView {
    
    var name: String = "EXView"
    
    init(frame: CGRect, name: String) {
        super.init(frame: frame)
        self.name = name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        print("\(name) -> \(#function)")
        return super.hitTest(point, with: event)
    }
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        
        let result = super.point(inside: point, with: event)
        print("\(name) -> \(#function) \(result)")
        return result
    }
}
