//
//  OrderDetails.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by Jubin KS on 2019-03-21.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import Foundation
class OrderDetails{
    var orderId:Int
    var productId:Int
    var productName:String
    var quantity:Int
    var unitCost:Float
    var subtotal:Float
    init(){
        self.orderId=0
        self.productId=0
        self.productName=String()
        self.quantity=0
        self.unitCost=0.0
        self.subtotal=0.0
}
}
