//
//  ViewController.swift
//  loginWithFireBase
//
//  Created by Rajeev on 21/04/23.
//

import UIKit
import Firebase

class ViewController: UIViewController {

   
    
    @IBOutlet var login: UIButton!
    @IBOutlet var creatAcount: UIButton!
    @IBOutlet var forget: UIButton!
    
    @IBOutlet weak var splashImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
           layOut()
           if FirebaseAuth.Auth.auth().currentUser != nil
        {
            self.performSegue(withIdentifier: "main", sender: self)
        }
       // self.navigationItem.hidesBackButton = true
        
    }
   
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        if FirebaseAuth.Auth.auth().currentUser == nil {

        }
    }

    
     func layOut()
    {
        login.layer.cornerRadius = 20
        creatAcount.layer.cornerRadius = 20
        forget.layer.cornerRadius = 20
        splashImg.layer.cornerRadius = 50
        self.navigationItem.hidesBackButton = true
    }
    

    func delay(_ delay:Double, closure:@escaping ()->()) {
        let when = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: when, execute: closure)
    }
   
    


}





