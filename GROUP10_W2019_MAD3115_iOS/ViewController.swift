//
//  ViewController.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by Jubin KS on 2019-03-14.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    let user = User(uId: "srj", pass: "srj", lstatus: "l")

    @IBAction func login(_ sender: Any) {
        let a = username.text
        let b = password.text
        
        if( user.verifyLogin(usId:a!, pass:b!)==true)
        {
            print("login sucess")
            
            
        }else{
            print("not sucess")
        }
        
    }
    

}

