//
//  SWebViewController.swift
//  Nothing
//
//  Created by xiaoxi on 2020/9/8.
//  Copyright © 2020 xiaoxi. All rights reserved.
//

import UIKit
import WebKit

class SWebViewController: BaseViewController,WKNavigationDelegate {

    var urlssss: String?
    
    var webview = WKWebView()
    
    var progBar = UIProgressView()

    override func viewDidLoad() {
        super.viewDidLoad()

        //创建wkwebview
        let webview = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        //创建网址
        let url = NSURL(string: urlssss ?? "www.baidu.com")
        //创建请求
        let request = NSURLRequest(url: url! as URL)
        //加载请求
        webview.load(request as URLRequest)
        //添加wkwebview
        self.view.addSubview(webview)
        
        webview.navigationDelegate = self
        
        progBar = UIProgressView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 30))
        progBar.progress = 0.0
        progBar.tintColor = UIColor.red
        webview.addSubview(progBar)
        
        webview.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)


    }
    
//    注意网页标题要在网页加载完成后才能获取,否则为空,于是我们用到'处理网页加载完成'这个方法:
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.title = webview.title
    }
//    加载进度条 -- 暂时还不行
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            self.progBar.alpha = 1.0
            progBar.setProgress(Float(webview.estimatedProgress), animated: true)
             //进度条的值最大为1.0
            if(self.webview.estimatedProgress >= 1.0) {
                UIView.animate(withDuration: 0.3, delay: 0.1, options: .curveEaseInOut, animations: { () -> Void in
                    self.progBar.alpha = 0.0
                }, completion: { (finished:Bool) -> Void in
                    self.progBar.progress = 0
                })
            }
        }
    }
    


}
