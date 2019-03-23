
import Foundation


import Foundation

var o = [Orders]()

class Customer:User
{
    var customerName:String
    var address:String
    var email:String
    var creditCardInfo:String
    var shippingInfo:String
    //array of Orders              //Orders()
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
    func checkOut(){
        let date=Date()
        let sdate=Date.init(timeIntervalSinceNow: 5*86400)
        let currdate="12"
        let shipdate="123"
        print("Select shipping type\n1.Domestic 2.International")
        let choice=Int(readLine()!)!
        var shipCost:Int
        var shipType:String
        if(choice == 1){
            shipCost=5
            shipType="Domestic"
        }
        else{
            shipCost=15
            shipType="International"
        }
        print("Select region/province\n1.Ontario\n2.British Columbia\n3.Quebec\n4.Alberta")
        let regchoice=Int(readLine()!)!
        print("press 1 to confirm your order")
        let confirm=Int(readLine()!)!
        if(confirm == 1){
            let or=Orders()
            //or.placeOrder()
            or.placeOrder(currDate: currdate, shipDate: shipdate, custName: self.customerName, shipType: shipType, shipCost: shipCost, regionId: regchoice, cartObj: sc)
            o.append(or)
        }
    }
    
}

