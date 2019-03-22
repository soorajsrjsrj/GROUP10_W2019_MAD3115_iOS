//
//  Orders.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by Jubin KS on 2019-03-21.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import Foundation


class Orders{
    var orderId:Int
    var dateCreated:String
    var dateShipped:String
    var customerName:String
    var customerId:String
    var status:String
    var shippingId:String
    var si = [ShippingInfo]()   //ShippingInfo()
    var od = [OrderDetails]()//OrderDetails()
    init()
    {
        self.orderId=0
        self.dateCreated=String()
        self.dateShipped=String()
        self.customerName=String()
        self.customerId=String()
        self.status=String()
        self.shippingId=String()
}
}
