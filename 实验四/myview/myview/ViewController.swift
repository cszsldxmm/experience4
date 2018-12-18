//
//  ViewController.swift
//  myview
//
//  Created by 7 on 2018/12/17.
//  Copyright © 2018 7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let circle = MyView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        
        circle.backgroundColor = UIColor.clear
        
        self.view.addSubview(circle)
    }

}
