//
//  ViewController.swift
//  HelloWorld
//
//  Created by 7 on 2018/12/17.
//  Copyright © 2018 7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label: UILabel!
    var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        label.text = "hello Swift"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = UIColor.black
        self.view.addSubview(label)
        
        btn = UIButton(frame: CGRect(x: 150, y: 250, width: 50, height: 40))
        btn.setTitle("Click", for: .normal)
        btn.backgroundColor = UIColor.blue
        btn.setTitleColor(UIColor.black, for: .highlighted)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(cilcked), for: .touchUpInside)
    }
    
    @IBAction func cilcked() {
        if label.text! == "Clicked" {
            label.text = "hello Swift"
            btn.setTitle("Click", for: .normal)
        } else {
            label.text = "Clicked"
            btn.setTitle("hello", for: .normal)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

