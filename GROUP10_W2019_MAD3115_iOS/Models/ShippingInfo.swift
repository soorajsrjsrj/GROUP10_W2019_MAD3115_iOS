//
//  ShippingInfo.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by Jubin KS on 2019-03-21.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import Foundation


class ShippingInfo{
    private var shippingId:Int
    var shippingType:String
    var shippingCost:Int
    var shippingRegionId:Int
    var getId:Int{
        get{
            return shippingId
        }
    }
    init()
    {
        self.shippingId=0
        self.shippingType=String()
        self.shippingCost=0
        self.shippingRegionId=0
    }
    init(shipType:String,shipCost:Int,shipRegId:Int){
        self.shippingId=Int(arc4random())
        self.shippingType=shipType
        self.shippingRegionId=shipRegId
        self.shippingCost=shipCost
}
}
