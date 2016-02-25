//
//  ViewController.swift
//  YohoCraft
//
//  Created by Gong_Youhao on 16/2/24.
//  Copyright © 2016年 Yoho Gong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "http://202.118.65.53/mobileplatform/unifiedEntranceModel.do?functionPyname=cxyktjbxx&param={%22ydusertype%22:%220%22,%22imei%22:%22%3C27dfe3be%202fcfd3d1%200718b0ee%20a7d21cea%20af88da96%2049624317%20bbe2e244%2094157914%3E%22,%22param%22:%22201201240%22,%22appid%22:%22dlut-ylkxt%22}";
        print(url);
        Alamofire.request(.GET, url).responseJSON { (response) -> Void in
            print(response);
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

