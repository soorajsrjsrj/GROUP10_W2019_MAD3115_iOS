//
//  HomeViewController.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by SOORAJ SUNEESH on 2019-03-21.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
   
    

    @IBOutlet weak var label: UILabel!
    
    var p = [Products]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addproducts()
        
       
        // pdtq.text = String(p[0].getproduct)
        //  pdt.text = String(p[0].getproductId)

        // Do any additional setup after loading the view.
    }
 
    func addproducts(){
        let prd = Products(productId: 1, productName: "Iphone XS Max 64GB", productQuantity: 10, productPrice: 1200.00)
        p.insert(prd, at: 0)
        
        // pdt.text = String(p[0].getproductId)
        label.text = String(p[0].getproductName)
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
