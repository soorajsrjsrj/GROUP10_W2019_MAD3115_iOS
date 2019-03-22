//
//  Customer.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by Jubin KS on 2019-03-21.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import Foundation


import Foundation


class Customer:User
{
    var customerName:String
    var address:String
    var email:String
    var creditCardInfo:String
    var shippingInfo:String
    var o = [Orders]()              //array of Orders              //Orders()
    var sc = [ShoppingCart]()      //array of ShoppingCart        //ShoppingCart()
    override init(){
        self.customerName=String()
        self.address=String()
        self.email=String()
        self.creditCardInfo=String()
        self.shippingInfo=String()
        super.init()
    }
    init(uId:String,pass:String,lstatus:String,cName:String,address:String,email:String,creditcInfo:String,shipInfo:String){
        self.customerName=cName
        self.address=address
        
        print("inside init")
        self.email=email
        self.creditCardInfo=creditcInfo
        self.shippingInfo=shipInfo
        try super.init(uId: uId, pass: pass, lstatus: lstatus)
        
    }
    
    
    func login(uId:String,pass:String){
        
        if(super.verifyLogin(usId: uId, pass: pass)){
            print("Login successful")
        }
        else{
            print("Login failed")
        }
        
    }
    
}
