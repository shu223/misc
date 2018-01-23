//
//  CircleCell.swift
//  TTMCircleLayoutExample
//
//  Created by Shuichi Tsutsumi on 2015/03/12.
//  Copyright (c) 2015 Shuichi Tsutsumi. All rights reserved.
//

import UIKit

class CircleCell: UICollectionViewCell {
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}
