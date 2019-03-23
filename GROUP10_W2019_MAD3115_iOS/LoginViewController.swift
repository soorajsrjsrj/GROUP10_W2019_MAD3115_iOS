

import UIKit
var customer = [Customer]()

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adCustomer()
        
        
    }
    
    func adCustomer(){
        
        let Cust = Customer(uId: "1234", pass: "1234", lstatus: "l", cName: "jubin", address: "xyz", email: "a@a.com", creditcInfo: "asdfvb", shipInfo: "asdf")
        //  let Cust1 = Customer(uId: "1", pass: "1", lstatus: "l", cName: "jubin", address: "xyz", email: "a@a.com", creditcInfo: "asdfvb", shipInfo: "asdf")
        customer.insert(Cust, at: 0)
        
    }
    @IBAction func login(_ sender: Any) {
        let a = username.text
        let b = password.text
        for i in customer{
            if( customer[0].verifyLogin(usId:a!, pass:b!)==true)
            {
                print("login sucess")
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil);
                let vc = storyboard.instantiateViewController(withIdentifier: "tabView") ; // MySecondSecreen the storyboard ID
                self.present(vc, animated: true, completion: nil);
                
                
                
                
            }else{
                print("not sucess")
            }
            
        }
        
        
    }
}
