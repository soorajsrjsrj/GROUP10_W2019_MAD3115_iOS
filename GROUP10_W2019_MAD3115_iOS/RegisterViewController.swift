//
//  RegisterViewController.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by SOORAJ SUNEESH on 2019-03-25.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    let cus=Customer()

    @IBOutlet weak var registerUsername: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passwordRe: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var customername: UITextField!
    
    @IBOutlet weak var addressc: UITextField!
    
    @IBOutlet weak var shippingInformation: UITextField!
    
    let alertController = UIAlertController(title: "Notice", message: "Sucessfully Registered!!", preferredStyle: .alert)
    
    let action1 = UIAlertAction(title: "OK", style: .default)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerButton(_ sender: Any) {
        
        register()
        custDict.updateValue(cus, forKey: cus.userId)
        c.append(cus)
        alertController.addAction(action1)
        
        self.present(alertController, animated: true, completion: nil)
        
        
    }
    func register(){
      
            let uId=registerUsername.text
            cus.userId=uId!
            let pass=password.text
            cus.password=pass!
            
           
            let emai=email.text
            cus.email=emai!
            
       let customerN=customername.text
        cus.customerName=customerN!
        let addres=addressc.text
            cus.address=addres!
        let shippingInfo=shippingInformation.text
            cus.shippingInfo=shippingInfo!
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
