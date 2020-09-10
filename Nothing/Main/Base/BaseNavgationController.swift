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
//        设置 title 颜色 字体大小
        let textAttributes = [NSAttributedString.Key.font:UIFont.systemFont(ofSize: 18),NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationBar.titleTextAttributes = textAttributes
//        设置返回按钮颜色
        navigationBar.tintColor = .white
        
//        设置navigationbar的背景色
        navigationBar.barTintColor = UIColor(red: 63.0/255.0, green: 67.0/255.0, blue: 76.0/255.0, alpha: 1.0)
        navigationBar.isTranslucent = true
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent;
        
    }
    
//    设置返回按钮的文字 图片
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        viewController.navigationItem.backBarButtonItem = UIBarButtonItem.init(title: "", style: .done, target: self, action: nil)
        super.pushViewController(viewController, animated: animated)
    }


}
