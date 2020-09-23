//
//  ViewController.swift
//  HelloSSVA
//
//  Created by muhlenXi on 2020/8/28.
//  Copyright © 2020 muhlenxi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var fireButton: UIButton = {
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        btn.setTitle("Fire", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: #selector(self.onClickFireButton(_:)), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addObserver()
        self.view.addSubview(fireButton)
        fireButton.center = self.view.center
        
    }
    
    @objc func onClickFireButton(_ sender: UIButton) {
        postNotification()
    }
    
    @objc func onReceiveHelloNotification(_ noti: Notification) {
        print(noti)
    }
}

extension ViewController {
    func addObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(self.onReceiveHelloNotification(_:)), name: NSNotification.Name("hello"), object: nil)
    }
    
    func postNotification() {
        var dict = [String: Any]()
        dict["name"] = "bob"
        dict["age"] = 18
        let notification = Notification(name: Notification.Name("hello"), object: self, userInfo: dict)
        NotificationCenter.default.post(notification)
        print(notification)
    }
}

