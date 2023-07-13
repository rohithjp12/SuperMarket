//
//  ViewController.swift
//  SuperMarket
//
//  Created by Rajeev on 30/06/23.
//

import UIKit

class HomeViewController: UIViewController {

    
    
    @IBOutlet weak var containerView: UIView!
    var viewOpen:Bool = true
    @IBOutlet var profileImageView:UIImageView!
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var shopCollectionView: UICollectionView!
    @IBOutlet weak var CookiesFoodCollectionView: UICollectionView!
    @IBOutlet weak var mycollectionView:UICollectionView!
    @IBOutlet var page:UIPageControl!
    
    @IBOutlet weak var vieww: UIView!
    
    
    var a:String = ""
    var currentcellIndex = 0
    var webSeriesImages = ["add1","add2","add3","add4","add5"]
    var timer:Timer?
    
    
    
    
    override func viewDidLoad()
    {
        
        
        super.viewDidLoad()
        self.containerView.isHidden = true
        viewOpen = false
        self.navigationItem.hidesBackButton = true
        datasourceAndDelegate()
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
        page.numberOfPages = webSeriesImages.count
        borderlayout()
        imageTapGesture()
    }
    
    @IBAction func sideBarBtn(_ sender: Any) {
        containerView.isHidden = false
        if !viewOpen
        {
            viewOpen = true
            containerView.frame = CGRect(x: 0, y: 57, width: 0, height: 754)
        }
        else
        {
            containerView.isHidden = true
            viewOpen = false
            containerView.frame = CGRect(x: 0, y: 57, width: 0, height: 754)
        }
    }
    func borderlayout()
    {
        profileImageView.layer.cornerRadius = 75
        vieww.layer.cornerRadius = 25
        searchTextField.layer.cornerRadius = 50
    }
    func imageTapGesture()
    {
        let tapGesture = UITapGestureRecognizer()
        tapGesture.addTarget( self,action:#selector(HomeViewController.openGallery(tapGesture:)))
        profileImageView.isUserInteractionEnabled = true
        profileImageView.addGestureRecognizer(tapGesture)
        if   let loadedImage = UIImage(data: UserDefaults.standard.data(forKey: "uploadedImage")!)
        {
            profileImageView.image = loadedImage
        }
        else
        {
            print("not access")
        }
        
    }
        @objc func openGallery(tapGesture: UITapGestureRecognizer)
        {
            self.setupImagePicker()
        }
    
    @objc func slideToNext()
    {
        if currentcellIndex < webSeriesImages.count-1
        {
            currentcellIndex  = currentcellIndex + 1
        }
        
        else
        {
            currentcellIndex = 0
        }
        page.currentPage = currentcellIndex
        mycollectionView.scrollToItem(at:IndexPath(item:currentcellIndex,section: 0),at: .right , animated:true)
    }

    
    
func datasourceAndDelegate()
    {
        shopCollectionView.delegate = self
        shopCollectionView.dataSource = self
        CookiesFoodCollectionView.delegate = self
        CookiesFoodCollectionView.dataSource = self
    }

}



extension HomeViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout
{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.shopCollectionView
        {
            return ShopDatabaseClass.instance.ShopCategories1().count
        }
        else if collectionView == self.CookiesFoodCollectionView
        {
            return cookiesDatabaseClass.cookiesInstance.CookiesCategories1().count
        }
        else if collectionView == self.mycollectionView
        {
            return webSeriesImages.count
        }
        else
        {
            return a.count
        }
    }

    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        
        if collectionView == self.shopCollectionView
        {
            if let cell = shopCollectionView.dequeueReusableCell(withReuseIdentifier: "shopCell1", for: indexPath) as? ShopByCategoryCell1
            {
                let index_Path = ShopDatabaseClass.instance.ShopCategories1()[indexPath.row]
                cell.shopsetupCell(_Category: index_Path)
                cell.layer.cornerRadius = 10
                cell.layer.borderWidth = 2
                cell.layer.borderColor = UIColor.white.cgColor
                
                return cell
            }
            return ShopByCategoryCell1()
        }
        
        else if collectionView == self.CookiesFoodCollectionView
        {
            if  let cell = CookiesFoodCollectionView.dequeueReusableCell(withReuseIdentifier: "cookingCell1", for: indexPath) as? CookingIdeaCell1
            {
                let index_path = cookiesDatabaseClass.cookiesInstance.CookiesCategories1()[indexPath.row]
                cell.CookingSetUpCell(_cookingCell: index_path)
                // cell.layer.cornerRadius = 10
                // cell.layer.borderWidth = 2
                // cell.layer.borderColor = UIColor.white.cgColor
                
                return cell
            }
           // return CookingIdeaCell1()
        }
        
        
        
        
        else  if collectionView == self.mycollectionView
        {
            let cell = mycollectionView.dequeueReusableCell(withReuseIdentifier: "auto", for: indexPath) as! autoScrollCollectionViewCell
            cell.myimg.image = UIImage(named: webSeriesImages[indexPath.row])
            cell.layer.cornerRadius = 25
            return cell
        }
        
        return CookingIdeaCell1()
        
    }


    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.shopCollectionView
        {
            let  catee = ShopDatabaseClass.instance.ShopCategories1()[indexPath.row]
            let g = catee.productTitle

            
            switch g
            {
            case "Atta":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.attaRiceCategories()
                SuperMartSecondViewController.shopp = ShopDatabaseClass.instance.attaRiceCategories()
            case "House Cleaning":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.houseCleaningCategories()

            case "Soft Drinkd":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.softDrinkCategories()

            case "Breakfast":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.breakFaastCategori()

            case "Masala":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.masalaCategories()

            case "Chipes":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.chipesCategories()
            case "Oil":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.oilCategories()
            case "Pulse":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.pulseCategories()
            case  "Tea * Coffee":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.teaCofeeCategories()
            case "Vegetable & Fruit":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.vegetableCategories()
            case "Biscuit":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.biscuitCategories()
            case "DietFood":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.dietCategories()
            case "DetergentPowder":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.detergentCategories()
            case "Personal & Care":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.personalCareCategories()
            case "Medicine":
                SuperMartSecondViewController.shop = ShopDatabaseClass.instance.medicineCategories()
            default:
                print("abc")
            }
            performSegue(withIdentifier: "top", sender: catee)
        }
       
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat
    {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == mycollectionView.self
        {
            return CGSize(width: mycollectionView.frame.width, height: mycollectionView.frame.height)

        }
        else
        {
            let width = shopCollectionView.bounds.width
            return CGSize(width: width/3-10, height: width/3-10)
        }
    }

}





//***************** uiimage picket extension  **********************

extension HomeViewController:UIImagePickerControllerDelegate,UINavigationControllerDelegate
{
    
    func setupImagePicker()
    {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum)
        {
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .savedPhotosAlbum
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            self.present(imagePicker,animated: true,completion: nil)
        }
    }


    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        profileImageView.image = image
        self.dismiss(animated:true,completion:nil)
        UserDefaults.standard.setValue(image.pngData()!, forKey: "uploadedImage")

    }
    

    
    }

