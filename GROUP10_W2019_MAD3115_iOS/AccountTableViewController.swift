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
                print("Go to MY PROFILE")
              /*  let sb = UIStoryboard(name: "Main", bundle: nil)
                let studentDetailsVC = sb.instantiateViewController(withIdentifier: "studentDetailsVC") as! StudentInforamtionViewController
                self.navigationController?.pushViewController(studentDetailsVC, animated: true)*/
            case 1:
                print("Go to MY ORDER")
            case 2:
                print("Go to MY ADDRESSS")
            case 3:
                print("about us")
            case 4:
                print("logged  out")
                
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let pVC = sb.instantiateViewController(withIdentifier: "loginVC") 
                self.navigationController?.pushViewController(pVC, animated: true)
                
                
            default:
                print("Invalid Option")
            }
        }
        }
    }



    

