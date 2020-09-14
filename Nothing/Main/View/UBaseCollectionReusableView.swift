//
//  UBaseCollectionReusableView.swift
//  Nothing
//
//  Created by xiaoxi on 2020/9/14.
//  Copyright © 2020 xiaoxi. All rights reserved.
//

import UIKit
import Reusable

class UBaseCollectionReusableView: UICollectionReusableView, Reusable {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func configUI() {}
}
