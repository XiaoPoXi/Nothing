//
//  BaseViewController.swift
//  SwiftCode
//
//  Created by JM001 on 2019/6/10.
//  Copyright © 2019 Xiaopoxi. All rights reserved.
//

import UIKit
import MBProgressHUD
import SnapKit
import Then
import Reusable
import Kingfisher

class BaseViewController: UIViewController {

//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//
//
//    }
    
    fileprivate lazy var hud:MBProgressHUD = {
        let hud = MBProgressHUD(view:self.view)
        return hud
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = UIRectEdge()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

//hud
extension BaseViewController:MBProgressHUDDelegate{
    
    func showdownLoading() {
        self.view.addSubview(hud)
        self.view.bringSubviewToFront(hud)
        hud.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapHideDownLoading)))
        hud.show(true)
    }
    @objc func tapHideDownLoading() {
        self.perform(#selector(hidedownLoading(_:)), with: nil, afterDelay: 3)
    }
    @objc func hidedownLoading(_:Int) {
        hidedownLoading()
    }
    func hidedownLoading() {
        hud.removeFromSuperViewOnHide = true
        hud.hide(true)
    }
    
    /**
     展示信息
     */
    func showMsg(_ msg:String) {
        let hud = MBProgressHUD.showAdded(to: self.view, animated: true)
        hud.labelText = msg
        hud.mode = .text
        hud.show(true)
        hud.hide(true, afterDelay: 1.5)
        hud.removeFromSuperViewOnHide = true
    }
}
