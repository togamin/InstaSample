//
//  photeViewController.swift
//  InstaSample
//
//  Created by Togami Yuki on 2018/10/26.
//  Copyright © 2018 Togami Yuki. All rights reserved.
//

import UIKit

class photeViewController: UIViewController {
    //前の画面がら画像データを受け取るための、変数。
    var getPhoto:UIImage!
    @IBOutlet weak var getPhotoView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //imageViewに画像を入れる
        getPhotoView.image = getPhoto
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
