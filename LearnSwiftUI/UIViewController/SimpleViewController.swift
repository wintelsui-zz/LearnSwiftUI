//
//  SimpleViewController.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/12.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import UIKit
import SwiftUI

class SimpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI() {
        let width = self.view.frame.size.width
        
        let label = UILabel(frame: CGRect(x: (width - 300)/2.0, y: 20, width: 300, height: 44))
        label.text = "It's a UIViewController"
        label.textAlignment = .center
        self.view.addSubview(label)
        
        
        
        let attributedStringParagraphStyle = NSMutableParagraphStyle()
        attributedStringParagraphStyle.alignment = NSTextAlignment.center
        
        let attributedString = NSMutableAttributedString(string: "请用力点击我\n我会打开一个 SwiftUI View\nClick Me Please!\nI will open a  SwiftUI View")
        
        attributedString.addAttribute(NSAttributedString.Key.font, value:UIFont(name:"PingFangSC-Medium", size:24.0)!, range:NSMakeRange(0,6))
        attributedString.addAttribute(NSAttributedString.Key.font, value:UIFont(name:"PingFangSC-Regular", size:12.0)!, range:NSMakeRange(6,21))
        attributedString.addAttribute(NSAttributedString.Key.font, value:UIFont(name:"PingFangSC-Regular", size:18.0)!, range:NSMakeRange(27,16))
        attributedString.addAttribute(NSAttributedString.Key.font, value:UIFont(name:"PingFangSC-Regular", size:12.0)!, range:NSMakeRange(43,28))
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:attributedStringParagraphStyle, range:NSMakeRange(0,71))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value:UIColor(red:0.979, green:0.039, blue:0.892, alpha:1.0), range:NSMakeRange(0,6))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value:UIColor(red:0.367, green:0.094, blue:0.647, alpha:1.0), range:NSMakeRange(7,20))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value:UIColor(red:0.996, green:0.01, blue:0.175, alpha:1.0), range:NSMakeRange(27,16))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value:UIColor(red:0.367, green:0.094, blue:0.647, alpha:1.0), range:NSMakeRange(43,15))
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value:UIColor(red:0.367, green:0.094, blue:0.647, alpha:1.0), range:NSMakeRange(58,13))
        
        let button = UIButton(type: .custom)
        button.backgroundColor = UIColor(red:0.36, green:0.79, blue:0.96, alpha:0.5)
        button.frame = CGRect(x: (width - 300)/2.0, y: 104, width: 300, height: 200)
        button.titleLabel?.numberOfLines = 0
        button.setAttributedTitle(attributedString, for: .normal)
        button.addTarget(self, action: #selector(buttonPressed),
                         for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    @objc func buttonPressed() {
        
        let hostVC = UIHostingController(rootView: WebView())
        hostVC.title = "加载WebView"
        self.navigationController?.pushViewController(hostVC, animated: true)
//        present(hostVC, animated: true, completion: nil)
//        present的展示方式和通常不太一样,O(∩_∩)O哈！
    }
}

