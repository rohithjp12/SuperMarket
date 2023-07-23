//
//  CookingIdeaCell.swift
//  SuperMarket
//
//  Created by Rajeev on 13/07/23.
//

import UIKit

class CookingIdeaCell2: UICollectionViewCell {
  
   
    @IBOutlet weak var cookingImg2: UIImageView!
    @IBOutlet weak var cookingPrice2: UILabel!
    @IBOutlet weak var cookingName2: UILabel!
    
    
    @IBOutlet weak var pricebtn: UIButton!
    
    
    func CookingSetUpCell2(_cookingCell:shopCategory2)
    {
        cookingImg2.image = UIImage(named: _cookingCell.productImgName)
        cookingName2.text = _cookingCell.productTitle
        cookingPrice2.text = String(_cookingCell.productPrice)
        cookingPrice2.layer.cornerRadius = 25
        pricebtn.layer.cornerRadius = 10
        
    }
    
    override  func awakeFromNib() {
        cookingImg2.layer.cornerRadius = 10
    
    }
}
