//
//  SXWTabBarController.swift
//  SwiftCode
//
//  Created by JM001 on 2019/6/10.
//  Copyright © 2019 Xiaopoxi. All rights reserved.
//

import UIKit

class SXWTabBarController: UITabBarController{
    
    override func viewDidLoad(){
        //创建tabbar的子控制器
        self.creatSubViewControllers()
        super.viewDidLoad()
    }
    
    func creatSubViewControllers(){

        let A = self.setChildViewController(vc: HomeViewController.init(), title: "首页", image: "xingqiu", selectedImage: "xingqiu_select")
        let B = self.setChildViewController(vc: FindViewController.init(), title: "发现", image: "feiji", selectedImage: "feiji_select")
        let C = self.setChildViewController(vc: FirendViewController.init(), title: "朋友", image: "yongquan", selectedImage: "yongquan_select")
        let D = self.setChildViewController(vc: MineViewController.init(), title: "我的", image: "erji", selectedImage: "erji_select")
        self.viewControllers = [A,B,C,D]
        
        tabBar.barTintColor = UIColor.white
        tabBar.backgroundColor = UIColor.white
    }
    
    
    //    设置子viewController的title，image，selectedImage，设置了防止图片被渲染
    //    都添加了自定义的navbar
    func setChildViewController(vc: UIViewController, title: NSString,image: NSString,selectedImage: NSString) -> UIViewController{
        
        let Nav = BaseNavgationController.init(rootViewController: vc)
        Nav.tabBarItem.title = title as String
//        // 遵循图片原始颜色，否则图片会变成系统默认的蓝色
        Nav.tabBarItem.image = UIImage.init(named: image as String)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        Nav.tabBarItem.selectedImage = UIImage.init(named: selectedImage as String)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        // 修改标签栏选中时文字颜色
        Nav.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
        // 修改标签栏未选中时文字颜色
        Nav.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.orange], for: .normal)
        
        Nav.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 8, right: 0);
        
        return Nav
    }
    

}
