//
//  ViewController.swift
//  InstaSample
//
//  Created by Togami Yuki on 2018/10/26.
//  Copyright © 2018 Togami Yuki. All rights reserved.
//

import UIKit
import YPImagePicker

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ナビゲーションバーの背景画像
        let coloredImage = UIImage(named:"backImage.jpg")
        UINavigationBar.appearance().setBackgroundImage(coloredImage, for: UIBarMetrics.default)
        
        //ナビゲーションバーのTextColor
        //タイトル
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white ]
        //左のボタン
        UINavigationBar.appearance().tintColor = .white
        
        //ImagePickerの設定
        YPImagePickerConfig()
        
        
        
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        let picker = YPImagePicker()
        picker.didFinishPicking { [unowned picker] items, cancelled in
            for item in items {
                switch item {
                case .photo(let photo):
                    print("phote",photo.image)
                case .video(let video):
                    print("video",video)
                }
            }
            picker.dismiss(animated: true, completion: nil)
        }
        present(picker, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //インスタ風ImagePickerの設定
    func YPImagePickerConfig(){
        var config = YPImagePickerConfiguration()
        //ライブラリの写真を表示する際、1行に何枚写真を並べるか。
        config.library.numberOfItemsInRow = 5
        //どのスクリーンを最初に表示するか。
        config.startOnScreen = .library
        //ステータスバーを隠すかどうか
        config.hidesStatusBar = false
        //ナビゲーションの右側のボタン「Next」
        config.colors.tintColor = .white
        //上記設定
        YPImagePickerConfiguration.shared = config
    }
}

