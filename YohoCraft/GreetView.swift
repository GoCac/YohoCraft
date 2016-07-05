//
//  GreetView.swift
//  YohoCraft
//
//  Created by Gong_Youhao on 16/7/5.
//  Copyright © 2016年 Yoho Gong. All rights reserved.
//

import UIKit
import LTMorphingLabel

class GreetView: UIView {
    var messageLabel:LTMorphingLabel
    
    override init(frame: CGRect) {
        messageLabel = LTMorphingLabel.init(frame: CGRectZero)
        super.init(frame: frame)
        messageLabel.frame = CGRectMake(10, 0, self.bounds.size.width, self.bounds.size.height)
        messageLabel.morphingEffect = .Evaporate
        messageLabel.text = "立法上课的减肥啦"
        self.addSubview(messageLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
     // Only override drawRect: if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func drawRect(rect: CGRect) {
     // Drawing code
     }
     */
    
}
