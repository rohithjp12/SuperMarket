//
//  ShopByCategoryCell2.swift
//  SuperMarket
//
//  Created by Rajeev on 01/07/23.
//

import UIKit

class ShopByCategoryCell2: UICollectionViewCell {
    
    @IBOutlet var shopImage2:UIImageView!
    @IBOutlet var shopTitle2:UILabel!
    @IBOutlet var shopPrice:UILabel!
    
    
    @IBOutlet weak var btn: UIButton!
    
    func shopSetupCell2(_shopcategory:shopCategory2)
    {
        shopImage2.image = UIImage(named: _shopcategory.productImgName)
        shopTitle2.text = _shopcategory.productTitle
        shopPrice.text = String(_shopcategory.productPrice)
        
    }
    override  func awakeFromNib() {
        btn.layer.cornerRadius = 10
        shopImage2.layer.cornerRadius = 10
    
    }
    
    
}
