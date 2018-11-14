//
//  DotView.swift
//  DotsAndBoxes
//
//  Created by Mohammad on 11/14/18.
//  Copyright © 2018 Mohammadrf. All rights reserved.
//

import UIKit

class DotView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        self.backgroundColor = UIColor.black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
