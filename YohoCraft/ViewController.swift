//
//  ViewController.swift
//  YohoCraft
//
//  Created by Gong_Youhao on 16/2/24.
//  Copyright © 2016年 Yoho Gong. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import LTMorphingLabel

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = LTMorphingLabel(frame: CGRectMake(100, 100, 100, 100));
        label.text = "alskdjf";
        label.morphingEffect = .Evaporate;
        view.addSubview(label);
        
        let greetView = GreetView.init(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, 50))
        view.addSubview(greetView)
        
        let key = "c6e93443ee564a9aae43aee26f203036"
        let cityID = "CN101210101"
        let url = "https://api.heweather.com/x3/weather?cityid=\(cityID)&key=\(key)"
        Alamofire.request(.GET, url).responseJSON { (Response) in
//            print(Response)
            if let data = Response.result.value{
                let json = JSON(data)
                print(json.dictionaryValue)
            }
        }
        
//        let url = "http://202.118.65.53/mobileplatform/unifiedEntranceModel.do?"
//        let number = 201201240;
//        Alamofire.request(.GET, url, parameters: [ "functionPyname":"cxyktjbxx", "param": "{\"ydusertype\":\"2\",\"imei\":\"<27dfe3be 2fcfd3d1 0718b0ee a7d21cea af88da96 49624317 bbe2e244 94157914>\",\"param\":\"\(number)\",\"appid\":\"dlut-ylkxt\"}" ]).responseJSON { (Response) -> Void in
//            print(Response.result.value);
//            if let data = Response.result.value {
//                let json = JSON(data);
//                print(json["username"].stringValue);
//                label.text = "sdfkii";
//            }
//            if let data = Response.data {
//                let username = json["username"].stringValue;
//                print(username);
//            }
//        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

