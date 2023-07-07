//
//  shopByCategoryModel1.swift
//  SuperMarket
//
//  Created by Rajeev on 01/07/23.
//

import Foundation

struct ShopCategory1
{
   
    private(set) public var productImgName:String
    private(set) public var productTitle:String
    init(_productImgname:String,_productTitle:String)
    {
        self.productTitle = _productTitle
        self.productImgName = _productImgname
    }
}
