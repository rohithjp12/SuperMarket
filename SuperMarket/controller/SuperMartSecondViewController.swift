//
//  SuperMartSecondViewController.swift
//  SuperMarket
//
//  Created by Rajeev on 01/07/23.
//

import UIKit
import Firebase

class SuperMartSecondViewController: UIViewController {

    @IBOutlet weak var logOutBtn: UIBarButtonItem!
    
    @IBOutlet weak var shopCollectionView2: UICollectionView!
    
    static var shop = [shopCategory2]()
    static var shopp = [ShopCategory1]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("my data  \(SuperMartSecondViewController.shop)")
    }
    
    
    @IBAction func logOutbutton(_ sender: UIBarButtonItem) {
        
        do
        {
            try FirebaseAuth.Auth.auth().signOut()
           // logoutbtn.removeFromSuperview()
            // logoutbtn.resignFirstResponder()
            
           // self.performSegue(withIdentifier: "ViewController", sender: self)

            print("logout is successful")
        }
        catch
        {
            print("An error occured")
        }

        
    }
    
    
    
    
}
extension SuperMartSecondViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SuperMartSecondViewController.shop.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = shopCollectionView2.dequeueReusableCell(withReuseIdentifier: "shop", for: indexPath) as? ShopByCategoryCell2
        let ab = SuperMartSecondViewController.shop[indexPath.row]
        print("my cell data \(ab)")
        cell?.shopSetupCell2(_shopcategory: ab)
        //cell?.layer.cornerRadius = 5
        return cell!
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: shopCollectionView2.frame.size.width/3-5, height: shopCollectionView2.frame.size.height/3-5)
    }
    
    
}
