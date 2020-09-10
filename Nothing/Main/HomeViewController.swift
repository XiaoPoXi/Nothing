//
//  HomeViewController.swift
//  SwiftCode
//
//  Created by JM001 on 2019/6/10.
//  Copyright © 2019 Xiaopoxi. All rights reserved.
//

import UIKit


class HomeViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    
    
//    MARK: 视图创建
    var dataArray = [HomeModel]()
    var dataSource: Array<String> = ["随机",
                                        "Swift-页面跳转+传值",
                                        "Swift WKWebView详细解读",
                                        "Swift自动布局SnapKit的详细使用介绍",
                                        "Swift框架学习之-图片处理库Kingfisher使用",
                                        "1",
                                        "2",]
    
    var tableView:UITableView!
    private let HomeNormalTableViewCellID = "productCell"
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.title = "首页"
        self.view.backgroundColor = UIColor.white
//        创建tableView
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.backgroundColor = .white
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HomeNormalTableViewCell.self, forCellReuseIdentifier: HomeNormalTableViewCellID)
//        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none

        
    }
    //MARK: UITableView 代理
    
//cell 个数
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count

    }
    
//    section个数
     func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        原生创建的写法
//        let cellid = "cellid"
//        var cell = tableView.dequeueReusableCell(withIdentifier: cellid)
//        if cell == nil {
//            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellid)
//        }
//        cell?.textLabel?.text = "吟诗一首"
//        cell?.detailTextLabel?.text = "小荷才露尖尖角"
//        cell?.imageView?.image = UIImage(named: "")
//        return cell!
        
        
        
        let HomeNormalTableViewCell: HomeNormalTableViewCell = tableView.dequeueReusableCell(withIdentifier: HomeNormalTableViewCellID, for: indexPath) as! HomeNormalTableViewCell
        HomeNormalTableViewCell.selectionStyle = UITableViewCell.SelectionStyle.none
        HomeNormalTableViewCell.userLabel.text = dataSource[indexPath.row]
        return HomeNormalTableViewCell
        
        
    }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        switch indexPath.row {
            
                    
            case 0:
    //             随机
                let v1 = ViewController0908()
                self.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(v1, animated: true)
                self.hidesBottomBarWhenPushed = false
                
            case 1:
                
    //                Swift-页面跳转+传值
                let v2 = SWebViewController()
                v2.urlssss = "https://www.jianshu.com/p/114e87691d3b"
                self.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(v2, animated: true)
                self.hidesBottomBarWhenPushed = false
            
            case 2:
//                    Swift WKWebView详细解读
                let v2 = SWebViewController()
                v2.urlssss = "https://blog.csdn.net/sinat_31177681/article/details/107099845"
                self.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(v2, animated: true)
                self.hidesBottomBarWhenPushed = false
                
            case 3:
    //               Swift自动布局SnapKit的详细使用介绍
                let v2 = SWebViewController()
                v2.urlssss = "https://www.jianshu.com/p/2bad53a2a180"
                self.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(v2, animated: true)
                self.hidesBottomBarWhenPushed = false
            
            case 4:
    //               Swift框架学习之-图片处理库Kingfisher使用
                let v2 = SWebViewController()
                v2.urlssss = "https://www.jianshu.com/p/55bbfbdf78de"
                self.hidesBottomBarWhenPushed = true
                self.navigationController?.pushViewController(v2, animated: true)
                self.hidesBottomBarWhenPushed = false
                
            case 5:
            
                showMsg("数据有问题")
                    
                    
                default:
                    break
                }
    }

}

