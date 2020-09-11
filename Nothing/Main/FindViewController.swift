//
//  FindViewController.swift
//  SwiftCode
//
//  Created by JM001 on 2019/6/10.
//  Copyright © 2019 Xiaopoxi. All rights reserved.
//

import UIKit

class FindViewController: BaseViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.title = "发现"
        self.view.backgroundColor = UIColor.white
        setupUI()
        

        
    }
    
    func setupUI() {
        
//        设置layout
        let layout = UICollectionViewFlowLayout.init()
//        layout.itemSize = CGSize(width: 60, height: 60)
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets.init(top: 5, left: 5, bottom: 5, right: 5)
        // 设置分区头视图和尾视图宽高
//        layout.headerReferenceSize = CGSize.init(width: view.bounds.size.width, height: 88)
//        layout.footerReferenceSize = CGSize.init(width: view.bounds.size.width, height: 88)

        
        let colletionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        colletionView.backgroundColor = .gray
        
//        注册cell
        colletionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CollectionVIewCellID")
        colletionView.delegate = self
        colletionView.dataSource = self
        
        view.addSubview(colletionView)

        
    }
    
    
    //MARK: --------collectionview delegate datasoource-----------
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 18
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionVIewCellID", for: indexPath)
        cell.backgroundColor = .red
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
           
    }
   
   // 定义每一个cell的大小
    func collectionView(_ collectionView:UICollectionView, layout collectionViewLayout:UICollectionViewLayout, sizeForItemAt indexPath:IndexPath) ->CGSize {
       return CGSize(width: 60, height:  60);
    }
   
   // 定义每个Section的四边间距
    func collectionView(_ collectionView:UICollectionView, layout collectionViewLayout:UICollectionViewLayout, insetForSectionAt section:Int) ->UIEdgeInsets {
       return UIEdgeInsets(top: 0,left: 0,bottom: 0,right: 0);
    }

   // 两行cell之间的间距
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
       return 10;
    }
    
    // 两列cell之间的间距
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10;
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.bounds.width, height:  60);
    }
    
    

    
}
