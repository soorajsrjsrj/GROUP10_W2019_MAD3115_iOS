import UIKit
let or=Orders()
class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
 
    
    
    
    @IBOutlet weak var cartViewTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cartViewTable.delegate = self
        self.cartViewTable.dataSource = self
        print(String(sc.count))
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cartCell = tableView.dequeueReusableCell(withIdentifier: "cartCell") as! CartViewTableViewCell
        let r = sc[indexPath.row]
        
        cartCell.itemId.text = "\(r.productId)"
      //  cartCell.itemQuantity.text = "\(r.quantity)"
        
        return cartCell
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
