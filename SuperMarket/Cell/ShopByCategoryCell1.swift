//
//  ShopByCategoryCell1.swift
//  SuperMarket
//
//  Created by Rajeev on 01/07/23.
//

import UIKit

class ShopByCategoryCell1: UICollectionViewCell {
    
    
    @IBOutlet weak var shopImage1: UIImageView!
    @IBOutlet weak var shopLabel1: UILabel!
    
    
    override func awakeFromNib() {
      
        
        
    }
    
    func shopsetupCell(_Category:ShopCategory1)
    {
        shopImage1.image = UIImage(named: _Category.productImgName)
        shopLabel1.text = _Category.productTitle
    }
    
}
