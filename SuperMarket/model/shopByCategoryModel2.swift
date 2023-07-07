//
//  shopByCategoryModel2.swift
//  SuperMarket
//
//  Created by Rajeev on 01/07/23.
//

import Foundation

struct shopCategory2
{
    private(set) public var productImgName:String
    private(set) public var productTitle:String
    private(set) public var productPrice:Int

    init(_productImgname:String,_productTitle:String,_productPrice:Int)
    {
        self.productTitle = _productTitle
        self.productImgName = _productImgname
        self.productPrice = _productPrice
    }
}
