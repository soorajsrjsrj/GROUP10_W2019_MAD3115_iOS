//
//  HomeViewController.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by SOORAJ SUNEESH on 2019-03-21.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvProducts: UITableView!
    
   
    

   
    var p = [Products]()
    
    
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
        return self.p.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productCell = tableView.dequeueReusableCell(withIdentifier: "productCell") as! ProductTableViewCell
        
        let rr = self.p[indexPath.row]
        
        productCell.title.text = "\(rr.getproductId)"
        productCell.subtitle.text = "\(rr.productName)"
       
        
        return productCell
    }
    
    
 
    func addproducts(){
        let prd = Products(productId: 1, productName: "Iphone XS Max 64GB", productQuantity: 10, productPrice: 1200.00)
        let prd2 = Products(productId: 2, productName: "Samsung Note 9 64GB", productQuantity: 5, productPrice: 949.99)
        p.insert(prd, at: 0)
        p.insert(prd2, at: 0)
        
        // pdt.text = String(p[0].getproductId)
    
        
        
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
