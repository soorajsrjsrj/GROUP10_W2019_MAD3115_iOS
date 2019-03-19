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
    
    
    let user = User(uId: "123", pass: "123", lstatus: "l")

    @IBAction func login(_ sender: Any) {
        let a = username.text
        let b = password.text
        
        if( user.verifyLogin(usId:a!, pass:b!)==true)
        {
            print("login sucess")
            
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let vc = storyboard.instantiateViewController(withIdentifier: "HomeScreen") ; // MySecondSecreen the storyboard ID
            self.present(vc, animated: true, completion: nil);
            
            let i = #imageLiteral(resourceName: "profile.png")
            
        
        }else{
            print("not sucess")
        }
        
    }
    

}

