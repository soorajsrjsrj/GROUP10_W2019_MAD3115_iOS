//
//  AccountTableViewController.swift
//  GROUP10_W2019_MAD3115_iOS
//
//  Created by SOORAJ SUNEESH on 2019-03-21.
//  Copyright © 2019 Jubin KS. All rights reserved.
//

import UIKit

class AccountTableViewController: UITableViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0
        {
            switch indexPath.row {
            case 0:
                print("Go to Home")
              /*  let sb = UIStoryboard(name: "Main", bundle: nil)
                let studentDetailsVC = sb.instantiateViewController(withIdentifier: "studentDetailsVC") as! StudentInforamtionViewController
                self.navigationController?.pushViewController(studentDetailsVC, animated: true)*/
            case 1:
                print("Go to Products Page")
            case 2:
                print("Go to Order History Page")
            default:
                print("Invalid Option")
            }
        }else{
            switch indexPath.row {
            case 0:
                print("Go to Help Page")
            case 1:
                print("Go to About US Page")
            case 2:
                print("Go to Contact US Page")
            case 3:
                print("Call Logout")
            default:
                print("Invalid Option")
            }
        }
    }
}


    

