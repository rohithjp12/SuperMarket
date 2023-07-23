//
//  CookingIdeaViewController.swift
//  SuperMarket
//
//  Created by Rajeev on 13/07/23.
//

import UIKit

class CookingIdeaViewController: UIViewController {

    
    static var cookies = [shopCategory2]()

  @IBOutlet  var cookiesCollectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cookiesCollectionView.delegate = self
        cookiesCollectionView.dataSource = self
    }
    

    

}
extension CookingIdeaViewController:UICollectionViewDataSource,UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CookingIdeaViewController.cookies.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cookiesCollectionView.dequeueReusableCell(withReuseIdentifier: "cookiesCell", for: indexPath) as! CookingIdeaCell2
        let index_Path = CookingIdeaViewController.cookies[indexPath.row]
        cell.CookingSetUpCell2(_cookingCell: index_Path)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: cookiesCollectionView.frame.size.width/2-3, height: cookiesCollectionView.frame.size.height/3-3)
    }
    
}
