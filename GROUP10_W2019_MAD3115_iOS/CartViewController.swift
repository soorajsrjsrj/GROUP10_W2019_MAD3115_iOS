import UIKit
let or=Orders()
class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
 
    
    
    
    @IBOutlet weak var cartViewTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cartViewTable.delegate = self
        self.cartViewTable.dataSource = self
        print(String(tempObj!.sc.count))
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempObj!.sc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartCell = tableView.dequeueReusableCell(withIdentifier: "cartCell") as! CartViewTableViewCell
        let r = tempObj!.sc[indexPath.row]
      
        
        
        
        cartCell.itemId.text = "\(r.productId)"
        
        for i in p{
           
            
            if(r.productId == i.getproductId){
            
         
                print("\t\(i.productId)\t    \(i.productName)\t    \(i.productQuantity)\t       \(i.productPrice)")
                cartCell.productname.text = "\(i.productName)"
                  cartCell.productQuantity.text = "\(i.productQuantity)"
                  cartCell.productPrice.text = "\(i.productPrice)"
                cartCell.productImage.image = UIImage(named: i.productImage)
            }
        }
      //  cartCell.itemQuantity.text = "\(r.quantity)"
        
        return cartCell
    }
    

    @IBAction func placeOrder(_ sender: Any) {
        let or=Orders()
        //or.placeOrder()
        or.placeOrder(currDate: "1", shipDate: "2", custName: tempObj!.customerName, shipType: "dsl", shipCost: 50, regionId: 2, cartObj: sc)
        o.append(or)
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
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
