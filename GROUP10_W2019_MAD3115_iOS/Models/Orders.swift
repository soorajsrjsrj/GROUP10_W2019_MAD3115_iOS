
import Foundation
import Darwin


class Orders{
    var orderId:Int
    var dateCreated:String
    var dateShipped:String
    var customerName:String
    var customerId:String
    var status:String
    var shippingId:String
    var si = [ShippingInfo]()   //ShippingInfo()
    var od = [OrderDetails]()//OrderDetails()
    init()
    {
        self.orderId=0
        self.dateCreated=String()
        self.dateShipped=String()
        self.customerName=String()
        self.customerId=String()
        self.status=String()
        self.shippingId=String()
    }
    func placeOrder(currDate:String, shipDate:String, custName:String, /*custId:String, shipId:Int,*/ shipType:String, shipCost:Int, regionId:Int, cartObj:[ShoppingCart]){
        si.append(ShippingInfo(shipType: shipType, shipCost: shipCost, shipRegId: regionId))
        self.orderId=Int(arc4random())
        self.dateCreated=currDate
        self.dateShipped=shipDate
        self.customerName=custName
        self.customerId=self.customerId.randomStringWithLength(len: 5)
        self.status="Dispatched"
        self.shippingId=String(si[si.endIndex-1].getId)
        for i in cartObj{
            od.append(OrderDetails())
            od[od.endIndex-1].orderId=self.orderId
            od[od.endIndex-1].productId=i.productId
            od[od.endIndex-1].quantity=i.quantity
            for j in p{
                if(i.productId == j.productId){
                    od[od.endIndex-1].productName=j.productName
                    od[od.endIndex-1].unitCost=j.productPrice
                }
            }
            od[od.endIndex-1].calcPrice()
        }
    }
}

