import UIKit
let cartTemp=ShoppingCart()
var tempObj:Customer?
var sc = [ShoppingCart]()
var ord = Orders()
var si = [ShippingInfo]()
var od = [OrderDetails]()

class ProductDetailsViewController: UIViewController {
    
    @IBOutlet weak var cartImage: UIImageView!
    @IBOutlet weak var cartProductName: UILabel!
    @IBOutlet weak var cartProductdescription: UILabel!
    
    
    @IBOutlet weak var cartProductPrice: UILabel!
    
    @IBOutlet weak var cartButton: UIButton!
    
    
    @IBOutlet weak var productTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //productDetails()
        cartImage.image = UIImage(named: p[myIndex].productImage) 
    cartProductName.text = p[myIndex].productName
        cartProductPrice.text = String(p[myIndex].productPrice)
    
        
        
        // Do any additional setup after loading the view.
    }
    func productDetails(){
        print(p[myIndex].productName)
    }
    
    
    
    @IBAction func addProductButton(_ sender: Any) {
        
        addProducttoarray()
        placeOrder(currDate: "1", shipDate: "1", custName: customer[0].customerName, shipType: "s", shipCost: 1, regionId: 1, cartObj:sc)
        
        
    }
    
    func addProducttoarray(){
        
        
        let date = "12"
        cartTemp.addCartItem(cartId: Int.random(in: 1...100), productId: p[myIndex].productId, quantity: p[myIndex].productQuantity, dateAdded: String(date))
        sc.insert(cartTemp, at: 0)
        print(sc.count)
    }
    
    func placeOrder(currDate:String, shipDate:String, custName:String, /*custId:String, shipId:Int,*/ shipType:String, shipCost:Int, regionId:Int, cartObj:[ShoppingCart]){
        si.append(ShippingInfo(shipType: shipType, shipCost: shipCost, shipRegId: regionId))
        ord.orderId=Int(arc4random())
        ord.dateCreated=currDate
        ord.dateShipped=shipDate
        ord.customerName=custName
        ord.customerId="1"
        ord.status="Dispatched"
        ord.shippingId=String(si[si.endIndex-1].getId)
        for i in cartObj{
            od.append(OrderDetails())
            od[od.endIndex-1].orderId=ord.orderId
            od[od.endIndex-1].productId=i.productId
            od[od.endIndex-1].quantity=i.quantity
            for j in p{
                if(i.productId == j.productId){
                    od[od.endIndex-1].productName=j.productName
                    od[od.endIndex-1].unitCost=j.productPrice
                }
            }
            //orderId,productId,productName,quantity,unitcost,subtotal
            od[od.endIndex-1].calcPrice()
        }
        
        
    }
    
}
