

import UIKit

var custDict:[String:Customer]=[:]
var c=[Customer]()

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
   
    let alertController1 = UIAlertController(title: "Notice", message: "Please type the correct email id and password!!", preferredStyle: .alert)
    
    let action1 = UIAlertAction(title: "OK", style: .default)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adCustomer()
        
        
    }
    
    func adCustomer(){
        
        let c1 = Customer(uId: "1234", pass: "1234", lstatus: "l", cName: "jubin", address: "xyz", email: "a@a.com", creditcInfo: "asdfvb", shipInfo: "asdf")
        //  let Cust1 = Customer(uId: "1", pass: "1", lstatus: "l", cName: "jubin", address: "xyz", email: "a@a.com", creditcInfo: "asdfvb", shipInfo: "asdf")
        custDict.updateValue(c1, forKey: c1.userId)
        //custDict.updateValue(, forKey: <#T##String#>)
        //var cTemp=Customer()
        c.append(c1)
        
    }
    @IBAction func login(_ sender: Any) {
        let a = username.text
        let b = password.text
        if custDict.keys.contains(a!){
            tempObj=custDict[a!]
            if  tempObj!.verifyLogin(usId: a!, pass: b!)
       // for i in customer{
        //    if( customer[0].verifyLogin(usId:a!, pass:b!)==true)
            {
                print("login sucess")
                
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil);
                let vc = storyboard.instantiateViewController(withIdentifier: "tabView") ; // MySecondSecreen the storyboard ID
                self.present(vc, animated: true, completion: nil);
                
                
                
                
            }else{
                print("not sucess")
                alertController1.addAction(action1)
                
                self.present(alertController1, animated: true, completion: nil)
            }
            
        }
        
        
    }
}
