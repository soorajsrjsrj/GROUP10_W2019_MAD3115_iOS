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
    
    @IBOutlet weak var productQuantityview: UITextField!
    @IBOutlet weak var cartButton: UIButton!
    
    
    @IBOutlet weak var productTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //productDetails()
        cartImage.image = UIImage(named: p[myIndex].productImage) 
    cartProductName.text = p[myIndex].productName
        productQuantityview.text = "0"
        cartProductdescription.text = p[myIndex].productDesc
        cartProductPrice.text = String(p[myIndex].productPrice)
    
        
        
        // Do any additional setup after loading the view.
    }
  /*  @IBAction func quantityConfigure(_ sender: Any) {
        switch sender {
        case 0:
            <#code#>
        case 1:
            
        default:
            <#code#>
        }
    }
    */
    
    
    @IBAction func addProductButton(_ sender: Any) {
        
        addProducttoarray()
        or.placeOrder(currDate: "1", shipDate: "1", custName: tempObj!.customerName, shipType: "s", shipCost: 1, regionId: 1, cartObj:sc)
        o.append(or)
        
        
    }
    
    func addProducttoarray(){
        
        p[myIndex].productQuantity=Int(productQuantityview!.text!)!
        let date = "12"
        cartTemp.addCartItem(cartId: Int.random(in: 1...100), productId: p[myIndex].productId, quantity: Int(productQuantityview!.text!)!, dateAdded: String(date))
       // sc.insert(cartTemp, at: 0)
        tempObj!.sc.append(cartTemp)
        print(sc.count)
    }
    func updateQuantity()
    {
        print("Enter new quantity")
        p[myIndex].productQuantity=Int(readLine()!)!
    }
    
    
    
}
