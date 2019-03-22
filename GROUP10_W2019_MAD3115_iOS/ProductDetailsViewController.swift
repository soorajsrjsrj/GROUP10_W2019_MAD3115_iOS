//
//  ProductDetailsViewController.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by SOORAJ SUNEESH on 2019-03-21.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import UIKit

class ProductDetailsViewController: UIViewController {
    
  let cartTemp=ShoppingCart()
   
    @IBOutlet weak var cartButton: UIButton!
    
    
    @IBOutlet weak var productTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        productDetails()
       
    
      // Do any additional setup after loading the view.
    }
    func productDetails(){

    print(p[myIndex].productName)
        
    }
   
    
    @IBAction func addProductButton(_ sender: Any) {
        
        
 
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


