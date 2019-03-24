import UIKit
var myIndex = 0
var p = [Products]()


class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvProducts: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tvProducts.delegate = self
        self.tvProducts.dataSource = self
        addproducts()
        
        
        
        // pdtq.text = String(p[0].getproduct)
        //  pdt.text = String(p[0].getproductId)
        
        // Do any tional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return p.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productCell = tableView.dequeueReusableCell(withIdentifier: "productCell") as! ProductTableViewCell
        
        let rr = p[indexPath.row]
        
        productCell.title.text = "\(rr.productName)"
        productCell.subtitle.text = "\(rr.productPrice)"
      // productCell.price.text = "\(rr.productPrice)"
        productCell.imageView?.image=UIImage(named: rr.productImage)
        
        return productCell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "productdetails", sender: self)
    }
    
    
    
    func addproducts(){
        
        let prd1=Products(productId: 1, productName: "samsung galaxy s9", productQuantity: 5, productPrice: 100.00, productImage: "samsung.jpg")
        
        let prd2=Products(productId: 2, productName: "iphone", productQuantity: 3, productPrice: 1200.00, productImage: "iphone.jpeg")
        
        let prd3=Products(productId: 3, productName: "alexa", productQuantity: 4, productPrice: 600.00, productImage: "alexa.jpg")
        let prd4=Products(productId: 4, productName: "beats", productQuantity: 3, productPrice: 300.00, productImage: "beats.jpg")
        let prd5=Products(productId: 5, productName: "sony DSLR", productQuantity: 3, productPrice: 1700.00, productImage: "sony.jpg")
       
       p.insert(prd1, at: 0)
        p.insert(prd2, at: 0)
        p.insert(prd3, at: 0)
        p.insert(prd4, at: 0)
        p.insert(prd5, at: 0)
        
        // pdt.text = String(p[0].getproductId)
        
        
        
    }
    
    
    
}
