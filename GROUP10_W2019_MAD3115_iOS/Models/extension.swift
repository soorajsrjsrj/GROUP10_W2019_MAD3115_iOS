//
//  extension.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by SOORAJ SUNEESH on 2019-03-22.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import Foundation
extension String{
    

func randomStringWithLength (len : Int) -> String {
    
    let letters : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    
    var randomString : NSMutableString = NSMutableString(capacity: len)
    
    for i in 1...len {
        //(var i=0; i < len; i++){
        var length = UInt32 (letters.length)
        var rand = arc4random_uniform(length)
        randomString.appendFormat("%C", letters.character(at: Int(rand)))
    }
    
    return String(randomString)
}
}
