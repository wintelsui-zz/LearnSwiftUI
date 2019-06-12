//
//  SimpleViewController.swift
//  LearnSwiftUI
//
//  Created by apple on 2019/6/12.
//  Copyright © 2019 wintelsui. All rights reserved.
//

import UIKit

class SimpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI() {
        
        let label = UILabel(frame: CGRect(x: 10, y: 100, width: 300, height: 100))
        label.text = "这是一个UIViewController"
        self.view.addSubview(label)
        
        
    }
}
