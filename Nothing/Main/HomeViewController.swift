//
//  HomeViewController.swift
//  SwiftCode
//
//  Created by JM001 on 2019/6/10.
//  Copyright © 2019 Xiaopoxi. All rights reserved.
//

import UIKit


class HomeViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    var dataArray = [HomeModel]()
    var dataSource: [String: String] = ["title": "随机",
                                        "title": "Swift-页面跳转+传值",
                                        "title": "Swift WKWebView详细解读",
                                        "title": "Swift自动布局SnapKit的详细使用介绍",
                                        "title": "Swift框架学习之-图片处理库Kingfisher使用",
                                        "title": "1",
                                        "title": "2",]
    
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
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none

        self.requestData();
        
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
        HomeNormalTableViewCell.model = dataArray[indexPath.row]
        return HomeNormalTableViewCell
        
        
    }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 66
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        if indexPath.section == 0 {
            
        }
        switch indexPath.row {
            
        case 0:
//            随机
            let v1 = ViewController0908()
            self.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(v1, animated: true)
            self.hidesBottomBarWhenPushed = false
            
        case 1:
//            Swift-页面跳转+传值
        let v2 = SWebViewController()
        v2.urlssss = "https://www.jianshu.com/p/114e87691d3b"
        self.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(v2, animated: true)
        self.hidesBottomBarWhenPushed = false
        
        case 2:
//        Swift WKWebView详细解读
        let v2 = SWebViewController()
        v2.urlssss = "https://blog.csdn.net/sinat_31177681/article/details/107099845"
        self.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(v2, animated: true)
        self.hidesBottomBarWhenPushed = false
            
        case 3:
//        Swift自动布局SnapKit的详细使用介绍
        let v2 = SWebViewController()
        v2.urlssss = "https://www.jianshu.com/p/2bad53a2a180"
        self.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(v2, animated: true)
        self.hidesBottomBarWhenPushed = false
        
        case 4:
//        Swift框架学习之-图片处理库Kingfisher使用
        let v2 = SWebViewController()
        v2.urlssss = "https://www.jianshu.com/p/55bbfbdf78de"
        self.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(v2, animated: true)
        self.hidesBottomBarWhenPushed = false
        
            
            
        default:
            break
        }
    }

}

// MARK: - 请求
extension HomeViewController {
    
    func requestData() {
        self.dataArray = dataSource as? [HomeModel] ?? [] // []数组
        self.tableView.reloadData()
    }
}
