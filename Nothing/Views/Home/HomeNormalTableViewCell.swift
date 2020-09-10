//
//  HomeNormalTableViewCell.swift
//  Nothing
//
//  Created by xiaoxi on 2020/9/8.
//  Copyright © 2020 xiaoxi. All rights reserved.
//

import UIKit
import SnapKit

class HomeNormalTableViewCell: UITableViewCell {

    let width:CGFloat = UIScreen.main.bounds.width
    var userLabel:UILabel!
    var birthDayLabel:UILabel!
    var sexLabel:UILabel!
    var iconImg:UIImageView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        userLabel = UILabel()
        userLabel.font = UIFont.boldSystemFont(ofSize: 20)
        userLabel.textAlignment = .left
        userLabel.textColor = .red
        userLabel.numberOfLines = 0
        self.contentView.addSubview(userLabel)
        
        userLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.centerY.equalToSuperview()
        }
 
        
    }
    
    ///数据填充
    var model: HomeModel? {
        didSet {
            guard let model = model else { return }
            userLabel.text = model.title
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
