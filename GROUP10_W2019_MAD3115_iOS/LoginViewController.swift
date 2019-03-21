//
//  ViewController.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by Jubin KS on 2019-03-14.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    let Cust = Customer(uId: "1234", pass: "1234", lstatus: "l", cName: "jubin", address: "xyz", email: "a@a.com", creditcInfo: "asdfvb", shipInfo: "asdf")
    
    @IBAction func login(_ sender: Any) {
        let a = username.text
        let b = password.text
        
        if( Cust.verifyLogin(usId:a!, pass:b!)==true)
        {
            print("login sucess")
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let vc = storyboard.instantiateViewController(withIdentifier: "HomeScreen") ; // MySecondSecreen the storyboard ID
            self.present(vc, animated: true, completion: nil);
            
            
            
            
        }else{
            print("not sucess")
        }
        
    }
    
    
}
