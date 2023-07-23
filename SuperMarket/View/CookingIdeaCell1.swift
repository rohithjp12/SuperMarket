//
//  CookingIdeaCell1.swift
//  SuperMarket
//
//  Created by Rajeev on 01/07/23.
//

import UIKit

class CookingIdeaCell1: UICollectionViewCell {
    
    
    @IBOutlet weak var cookingImage1: UIImageView!
    @IBOutlet weak var cookingLabel1: UILabel!
    
    func CookingSetUpCell(_cookingCell:CookingCategory)
    {
        cookingImage1.image = UIImage(named: _cookingCell.productImgName)
        cookingLabel1.text = _cookingCell.productTitle
        cookingImage1.layer.cornerRadius = 25
    }
    
    
}
