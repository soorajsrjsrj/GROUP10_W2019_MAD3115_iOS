import UIKit
var myIndex = 0
var p = [Products]()


class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvProducts: UITableView!
    
    @IBOutlet weak var welcome: UILabel!
    fileprivate let searchController = UISearchController(searchResultsController: nil)

   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.searchController.obscuresBackgroundDuringPresentation = false
        self.searchController.searchBar.placeholder = "Search"
        self.searchController.searchBar.barStyle = .black
        self.searchController.searchBar.delegate = self as! UISearchBarDelegate
        self.definesPresentationContext = true
        self.navigationItem.searchController = searchController
       
        self.tvProducts.delegate = self
        self.tvProducts.dataSource = self
        addproducts()
        welcome.text = "Welcome " + (tempObj?.customerName)!
        
        
        
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
    // MARK: - Private instance methods
    
        
      //  tableView.reloadData()
    

    
    
    
    func addproducts(){
        
        let prd1=Products(productId: 1, productName: "samsung galaxy s9", productQuantity: 5, productDescp: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", productPrice: 100.00, productImage: "samsung.jpg")
        
        let prd2=Products(productId: 2, productName: "iphone", productQuantity: 3, productDescp: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",  productPrice: 1200.00, productImage: "iphone.jpeg")
        
        let prd3=Products(productId: 3, productName: "alexa", productQuantity: 4, productDescp: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",  productPrice: 600.00, productImage: "alexa.jpg")
        let prd4=Products(productId: 4, productName: "beats", productQuantity: 3, productDescp: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",  productPrice: 300.00, productImage: "beats.jpg")
        let prd5=Products(productId: 5, productName: "sony DSLR", productQuantity: 3, productDescp: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",  productPrice: 1700.00, productImage: "sony.jpg")
       
        p.insert(prd1, at: 0)
        p.insert(prd2, at: 0)
        p.insert(prd3, at: 0)
        p.insert(prd4, at: 0)
        p.insert(prd5, at: 0)
        
        // pdt.text = String(p[0].getproductId)
        
        
        
    }
    
    
}
extension HomeViewController: UISearchBarDelegate
{
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
    {
        //Show Cancel
        searchBar.setShowsCancelButton(true, animated: true)
        searchBar.tintColor = .white
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
    {
        //Filter function
       // self.filterFunction(searchText: searchText)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        //Hide Cancel
        searchBar.setShowsCancelButton(false, animated: true)
        searchBar.resignFirstResponder()
        
       // guard let term = searchBar.text ,term.trim().isEmpty == false else {
            
            //Notification "White spaces are not permitted"
       //     return
      //  }
        
        //Filter function
     //   self.filterFunction(searchText: term)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar)
    {
        //Hide Cancel
        searchBar.setShowsCancelButton(false, animated: true)
        searchBar.text = String()
        searchBar.resignFirstResponder()
        
        //Filter function
    //    self.filterFunction(searchText: searchBar.text)
    }
}






