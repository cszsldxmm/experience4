//
//  ViewController.swift
//  filecache
//
//  Created by 7 on 2018/12/16.
//  Copyright © 2018 7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let manager = FileManager.default
        let document = manager.urls(for: .documentDirectory, in: .userDomainMask).first?.path
        let file = document?.appending("/image")
        
        if manager.fileExists(atPath: file!) {
            let image = file?.appending("/yanmoai.png")
            if manager.fileExists(atPath: image!) {
                do{
                    let data = try Data(contentsOf: URL(fileURLWithPath: image!))
                    let img = UIImage(data: data)
                    let imageView = UIImageView(image: img)
                    imageView.frame = CGRect(x: 0, y: 100, width: 400, height: 300)
                    self.view.addSubview(imageView)
                } catch {
                    print(error)
                }
            } else {
                let url = URL(string: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545105591575&di=f753268872fa4bd6c974a58356cb314f&imgtype=0&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fbaike%2Fc0%253Dbaike60%252C5%252C5%252C60%252C20%253Bt%253Dgif%2Fsign%3Dc90fc145d1c8a786aa27425c0660a258%2F91529822720e0cf33bda2f440a46f21fbe09aa64.jpg")
                do{
                    let data = try Data(contentsOf: url!)
                    try data.write(to: URL(fileURLWithPath: image!), options: .atomicWrite)
                    print("文件不存在，已成功创建文件")
                } catch {
                    print(error)
                }
            }
        } else {  //若该文件夹不存在，则创建该文件夹
            do {
                try manager.createDirectory(atPath: file!, withIntermediateDirectories: true, attributes: nil)
                print("文件夹不存在，已成功创建文件夹")
            } catch {
                print(error)
            }
        }
        
    }

}

