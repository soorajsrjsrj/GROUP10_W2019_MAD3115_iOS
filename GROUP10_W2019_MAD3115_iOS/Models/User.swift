//
//  User.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by Jubin KS on 2019-03-14.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import Foundation

class User{
    var userId:String
    var password:String
    var loginStatus:String
    /*var getuserId:String{
     get{
     return userId
     }
     }*/
    init(){
        self.userId=String()
        self.password=String()
        self.loginStatus=String()
    }
    init(uId:String,pass:String,lstatus:String){
        self.userId=uId
       
    
        self.password=pass
        self.loginStatus=lstatus
    }
    func verifyLogin(usId:String , pass:String) -> Bool{
        if(self.userId == usId && self.password == pass){
            return true
        }
        else{
            return false
        }
    }
    
}
