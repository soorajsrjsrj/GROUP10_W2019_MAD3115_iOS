//
//  ShoppingCart.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by Jubin KS on 2019-03-21.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import Foundation

class ShoppingCart{
    var cartId:Int
    var productId:Int
    var quantity:Int
    var dateAdded:String
    init(){
        self.cartId=0
        self.productId=0
        self.quantity=0
        self.dateAdded=String()
    }
    func addCartItem(cartId:Int,productId:Int,quantity:Int,dateAdded:String){
        self.cartId=cartId
        self.productId=productId
        self.quantity=quantity
        self.dateAdded=dateAdded
        print("Item added")
     //   viewCartDetails()
}
}
