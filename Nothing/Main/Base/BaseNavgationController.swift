//
//  BaseNavgationController.swift
//  SwiftCode
//
//  Created by JM001 on 2019/6/10.
//  Copyright © 2019 Xiaopoxi. All rights reserved.
//

import UIKit

class BaseNavgationController: UINavigationController,UINavigationControllerDelegate
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        let textAttributes = [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 18),NSAttributedString.Key.foregroundColor:UIColor.white]
        
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().barTintColor = UIColor(red: 63.0/255.0, green: 67.0/255.0, blue: 76.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().isTranslucent = true
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent;
    }


}
