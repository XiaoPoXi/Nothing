//
//  UBaseTableViewCell.swift
//  Nothing
//
//  Created by xiaoxi on 2020/9/14.
//  Copyright © 2020 xiaoxi. All rights reserved.
//

import UIKit
import Reusable

class UBaseTableViewCell: UITableViewCell, Reusable {

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        configUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func configUI() {}

}
