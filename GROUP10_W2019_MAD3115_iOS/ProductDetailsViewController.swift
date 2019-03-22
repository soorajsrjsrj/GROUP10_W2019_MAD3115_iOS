//
//  ProductDetailsViewController.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by SOORAJ SUNEESH on 2019-03-21.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import UIKit
let cartTemp=ShoppingCart()
var tempObj:Customer?
var sc = [ShoppingCart]()

class ProductDetailsViewController: UIViewController {
    
  
  
   
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
       addProducttoarray()
        
    }
    
    func addProducttoarray(){
        let date = "12"
        cartTemp.addCartItem(cartId: Int.random(in: 1...100), productId: p[myIndex].productId, quantity: p[myIndex].productQuantity, dateAdded: String(date))
        tempObj?.sc.append(cartTemp)
        print(tempObj?.sc.count)
    }
    }

