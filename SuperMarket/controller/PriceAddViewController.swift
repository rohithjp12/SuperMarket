//
//  PriceAddViewController.swift
//  SuperMarket
//
//  Created by Rajeev on 09/07/23.
//

import UIKit

class PriceAddViewController: UIViewController {
    
    @IBOutlet var totalAmount:UILabel!
  static   var d = 0
  static  var select3: Int!
  static  var select4 = [shopCategory2]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  totalAmount.text = select4
        totalAmount.text = String(PriceAddViewController.select3)
    }
    
    
}
