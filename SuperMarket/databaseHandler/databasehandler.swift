//
//  databasehandler.swift
//  SuperMarket
//
//  Created by Rajeev on 01/07/23.
//

import Foundation

class ShopDatabaseClass
{
    static let instance = ShopDatabaseClass()
    
    private let shopcategoriess = [
        ShopCategory1(_productImgname: "atta & rice image", _productTitle: "Atta"),
        ShopCategory1(_productImgname: "cleaning Essentials", _productTitle: "House Cleaning"),
        ShopCategory1(_productImgname: "cold Drinks", _productTitle: "Soft Drinkd"),
        ShopCategory1(_productImgname: "breakfastt", _productTitle: "Breakfast"),
        ShopCategory1(_productImgname: "masala", _productTitle: "Masala"),
        ShopCategory1(_productImgname: "Munchies", _productTitle: "Chipes"),
        ShopCategory1(_productImgname: "oil", _productTitle: "Oil"),
        ShopCategory1(_productImgname: "pulse", _productTitle: "Pulse"),
        ShopCategory1(_productImgname: "tea & coffee", _productTitle: "Tea & Coffee"),
        ShopCategory1(_productImgname: "Vegetable & fruit", _productTitle: "Vegetable & Fruit"),
        ShopCategory1(_productImgname: "biscuit", _productTitle: "Biscuit"),
        ShopCategory1(_productImgname: "dietFood", _productTitle: "DietFood"),
        ShopCategory1(_productImgname: "ditergentPowder", _productTitle: "DetergentPowder"),
        ShopCategory1(_productImgname: "personalCare", _productTitle: "Personal & Care"),
        ShopCategory1(_productImgname: "pharma", _productTitle: "Medicine")
    ]
    
    func ShopCategories1() -> [ShopCategory1]
    {
        return shopcategoriess
    }
    
    
    private let attaRiceCategorie = [
                 shopCategory2(_productImgname: "ashirvad", _productTitle: "Ashirvad atta", _productPrice: 250),
                 shopCategory2(_productImgname: "basmati", _productTitle: "Basmati Rice", _productPrice: 300),
                 shopCategory2(_productImgname: "desiRice", _productTitle: "Desi Rice", _productPrice: 200),
                 shopCategory2(_productImgname: "fortuner", _productTitle: "fortune flour", _productPrice: 400),
                 shopCategory2(_productImgname: "hmtRice", _productTitle: "Sona Rice", _productPrice: 500),
                 shopCategory2(_productImgname: "khalsa atta", _productTitle: "Khalsa Atta", _productPrice: 600),
                 shopCategory2(_productImgname: "patanjali", _productTitle: "Patanjali Atta", _productPrice: 350),
                 shopCategory2(_productImgname: "tiber", _productTitle: "Mansoor Chawal", _productPrice: 450),
    ]
    func attaRiceCategories()->[shopCategory2]
    {
        return attaRiceCategorie
    }
    private let houseCleaningCategori = [
        shopCategory2(_productImgname: "brush", _productTitle: "Brush", _productPrice: 35),
        shopCategory2(_productImgname: "chemicalOil", _productTitle: "Chemical ", _productPrice: 50),
        shopCategory2(_productImgname: "dryVaccum", _productTitle: "DryMachine", _productPrice: 1000),
        shopCategory2(_productImgname: "handwash", _productTitle: "Handwash", _productPrice: 25),
        shopCategory2(_productImgname: "harpic", _productTitle: "Harpic", _productPrice: 65),
        shopCategory2(_productImgname: "jhadoo", _productTitle: "Jhadoo", _productPrice: 25),
        shopCategory2(_productImgname: "lizol", _productTitle: "Lizol", _productPrice: 38),
        shopCategory2(_productImgname: "tilesCleaninig", _productTitle: "Tiles Cleaner", _productPrice: 125),

    
    ]
    func houseCleaningCategories()->[shopCategory2]
    {
        return houseCleaningCategori
    }
            
    private let softDrinkCategori = [
        shopCategory2(_productImgname: "sprite", _productTitle: "Sprite", _productPrice: 40),
        shopCategory2(_productImgname: "stingg", _productTitle: "Sting", _productPrice: 20),
        shopCategory2(_productImgname: "thumpsump", _productTitle: "Thumps'up", _productPrice: 45),
        shopCategory2(_productImgname:"mazz", _productTitle: "Mazza ", _productPrice: 22),
        shopCategory2(_productImgname: "pepsi", _productTitle: "Pepsi", _productPrice: 21),
        shopCategory2(_productImgname: "mountainDue", _productTitle: "MountainDue", _productPrice: 92),
        shopCategory2(_productImgname: "fanta", _productTitle: "Fanta", _productPrice: 38),
        shopCategory2(_productImgname: "fizz", _productTitle: "Fizz", _productPrice: 10),

    
    ]
    func softDrinkCategories()->[shopCategory2]
    {
        return softDrinkCategori
    }
    private  let breakfastCategori = [
        shopCategory2(_productImgname: "breadChup", _productTitle: "BreadChup", _productPrice: 10),
        shopCategory2(_productImgname: "burger", _productTitle: "Burger", _productPrice: 25),
        shopCategory2(_productImgname: "dhosa", _productTitle: "Dhosa", _productPrice: 40),
        shopCategory2(_productImgname: "corn", _productTitle: "Corn", _productPrice: 30),
        shopCategory2(_productImgname: "fruitb", _productTitle: "Fruit", _productPrice: 50),
        shopCategory2(_productImgname: "mithai", _productTitle: "Misthan", _productPrice: 125),
        shopCategory2(_productImgname: "oats", _productTitle: "Oats", _productPrice: 30),
        shopCategory2(_productImgname: "poha", _productTitle: "Poha", _productPrice: 30),

    
    ]
    func breakFaastCategori()->[shopCategory2]
    {
        return breakfastCategori
    }
    private let MasalaCategori = [
        shopCategory2(_productImgname: "acharMasala", _productTitle: "AcharMaaasala", _productPrice: 30),
        shopCategory2(_productImgname: "chole masala", _productTitle: "Chole Masala", _productPrice: 25),
        shopCategory2(_productImgname: "garamMasala", _productTitle: "GaramMasala", _productPrice: 35),
        shopCategory2(_productImgname: "haldi", _productTitle: "Haldi", _productPrice: 32),
        shopCategory2(_productImgname: "mirchi", _productTitle: "Mirchi", _productPrice: 33),
        shopCategory2(_productImgname: "paneerMasala", _productTitle: "paneerMasala", _productPrice: 45),
        shopCategory2(_productImgname: "kitchenKing", _productTitle: "KitchenKing", _productPrice: 25),
        shopCategory2(_productImgname: "maggieMasala", _productTitle: "MaggieMasala", _productPrice: 20),

    
    ]
    func masalaCategories()->[shopCategory2]
    {
        return MasalaCategori
    }
    private let chipesCategori = [
        shopCategory2(_productImgname: "yellowLays", _productTitle: "Yellow Lays", _productPrice: 10),
        shopCategory2(_productImgname: "blueLays", _productTitle: "Blue Lays", _productPrice: 10),
        shopCategory2(_productImgname: "kurkure", _productTitle: "kurkure", _productPrice: 5),
        shopCategory2(_productImgname: "kurkure2", _productTitle: "kurkure2", _productPrice: 6),
        shopCategory2(_productImgname: "madAngles", _productTitle: "MadAngles", _productPrice: 5),
        shopCategory2(_productImgname: "Munchies", _productTitle: "Munchies", _productPrice: 10),
        shopCategory2(_productImgname: "jainBhujiya", _productTitle: "JainBhujiya", _productPrice: 10),
        shopCategory2(_productImgname: "haldiRamBhujiya", _productTitle: "HaldiRamBhujiya", _productPrice: 55),

    
    ]
    func chipesCategories()->[shopCategory2]
    {
        return chipesCategori
    }
    private let oilcategori = [
         shopCategory2(_productImgname: "dharaOil", _productTitle: "Dhara ", _productPrice: 45),
         shopCategory2(_productImgname: "fortuneOil", _productTitle: "Fortuner", _productPrice: 10),
         shopCategory2(_productImgname: "kachiGhaniOil", _productTitle: "KachiGhani", _productPrice: 5),
         shopCategory2(_productImgname: "kolhuOil", _productTitle: "Kolhu", _productPrice: 6),
         shopCategory2(_productImgname: "packetOil", _productTitle: "Packet oil", _productPrice: 5),
         shopCategory2(_productImgname: "pansariOil", _productTitle: "Pansari oil", _productPrice: 10),
         shopCategory2(_productImgname: "patanjaliOil", _productTitle: "Patanjali Oil", _productPrice: 10),
         shopCategory2(_productImgname: "sunriseOil", _productTitle: "Sunrise Oil", _productPrice: 55),
    ]
    func  oilCategories()->[shopCategory2]
    {
       return oilcategori
    }
    private let pulsecategori = [
         shopCategory2(_productImgname: "arhar", _productTitle: "Arhar", _productPrice: 45),
         shopCategory2(_productImgname: "chana", _productTitle: "Chana", _productPrice: 10),
         shopCategory2(_productImgname: "rahri", _productTitle: "Rahri", _productPrice: 5),
         shopCategory2(_productImgname: "soya", _productTitle: "Soya", _productPrice: 6),
         shopCategory2(_productImgname: "turDal", _productTitle: "Tur Dal", _productPrice: 5),
         shopCategory2(_productImgname: "pulseRice", _productTitle: "Pulse Rice", _productPrice: 10),
         shopCategory2(_productImgname: "masoor2", _productTitle: "Masoor", _productPrice: 10),
         shopCategory2(_productImgname: "masoor", _productTitle: "Masoor", _productPrice: 55),
    ]
    func  pulseCategories()->[shopCategory2]
    {
       return pulsecategori
    }
    private let teaCofeecategori = [
         shopCategory2(_productImgname: "caffine", _productTitle: "Caffine", _productPrice: 45),
         shopCategory2(_productImgname: "goldCofee", _productTitle: "GoldCoffe", _productPrice: 10),
         shopCategory2(_productImgname: "greenTea", _productTitle: "Green Tea", _productPrice: 5),
         shopCategory2(_productImgname: "healthCofee", _productTitle: "HealthCofee", _productPrice: 6),
         shopCategory2(_productImgname: "redTea", _productTitle: "Red Tea", _productPrice: 5),
         shopCategory2(_productImgname: "tataCofee", _productTitle: "tataCofee", _productPrice: 10),
         shopCategory2(_productImgname: "whiteCofee", _productTitle: "WhiteCofee", _productPrice: 10),
         shopCategory2(_productImgname: "seedPackCofee", _productTitle: "SeedPack ", _productPrice: 55),
    ]
    func  teaCofeeCategories()->[shopCategory2]
    {
       return teaCofeecategori
    }
    
    private let vegetablecategori = [
         shopCategory2(_productImgname: "apple", _productTitle: "Apple", _productPrice: 45),
         shopCategory2(_productImgname: "bitteGold", _productTitle: "BitteGold", _productPrice: 10),
         shopCategory2(_productImgname: "carrot", _productTitle: "Carrot", _productPrice: 5),
         shopCategory2(_productImgname: "cauliflower", _productTitle: "Cauliflower", _productPrice: 6),
         shopCategory2(_productImgname: "Gourd", _productTitle: "Gourd", _productPrice: 5),
         shopCategory2(_productImgname: "pea", _productTitle :"Pea", _productPrice: 10),
         shopCategory2(_productImgname: "ladyFinger", _productTitle: "ladyFinger", _productPrice: 10),
         shopCategory2(_productImgname: "sem", _productTitle: "Sem", _productPrice: 55),
         shopCategory2(_productImgname: "orange", _productTitle: "Orange", _productPrice: 50),
         shopCategory2(_productImgname: "radish", _productTitle: "Radish", _productPrice: 30)
    ]
    func  vegetableCategories()->[shopCategory2]
    {
       return vegetablecategori
    }
    
    private let biscuitcategori = [
         shopCategory2(_productImgname: "australian", _productTitle: "Australian", _productPrice: 45),
         shopCategory2(_productImgname: "butter", _productTitle: "Butter", _productPrice: 10),
         shopCategory2(_productImgname: "cookies", _productTitle: "Cookies", _productPrice: 5),
         shopCategory2(_productImgname: "heart", _productTitle: "Heart", _productPrice: 6),
         shopCategory2(_productImgname: "marrigold", _productTitle: "Marrigold", _productPrice: 5),
         shopCategory2(_productImgname: "oreo", _productTitle: "Oreo", _productPrice: 10),
         shopCategory2(_productImgname: "heart", _productTitle: "Heart", _productPrice: 10),
         shopCategory2(_productImgname: "parleji", _productTitle: "Parleji", _productPrice: 55),
    ]
    func  biscuitCategories()->[shopCategory2]
    {
       return biscuitcategori
    }
    
    private let detergentcategori = [
         shopCategory2(_productImgname: "bullet", _productTitle: "Bullet", _productPrice: 45),
         shopCategory2(_productImgname: "formil", _productTitle: "Formil", _productPrice: 10),
         shopCategory2(_productImgname: "gain", _productTitle: "Gain", _productPrice: 5),
         shopCategory2(_productImgname: "surfExcel", _productTitle: "surfExcel", _productPrice: 6),
         shopCategory2(_productImgname: "tide", _productTitle: "tide", _productPrice: 5),
         shopCategory2(_productImgname: "tide2", _productTitle: "tide2", _productPrice: 10),
         shopCategory2(_productImgname: "white", _productTitle: "White Powder", _productPrice: 10),
         shopCategory2(_productImgname: "woosh", _productTitle: "woosh", _productPrice: 55),
    ]
    func  detergentCategories()->[shopCategory2]
    {
       return detergentcategori
    }
    
    private let dietcategori = [
         shopCategory2(_productImgname: "almonds", _productTitle: "Almonds", _productPrice: 45),
         shopCategory2(_productImgname: "anas", _productTitle: "Anas ", _productPrice: 10),
         shopCategory2(_productImgname: "badam", _productTitle: "badam", _productPrice: 5),
         shopCategory2(_productImgname: "banana", _productTitle: "Banana", _productPrice: 6),
         shopCategory2(_productImgname: "eggg", _productTitle: "Egg", _productPrice: 5),
         shopCategory2(_productImgname: "lemon", _productTitle: "Lemon", _productPrice: 10),
         shopCategory2(_productImgname: "milk", _productTitle: "Milk", _productPrice: 10),
         shopCategory2(_productImgname: "tomato", _productTitle: "Tomato", _productPrice: 55),
    ]
    func  dietCategories()->[shopCategory2]
    {
       return dietcategori
    }
    
    private let personalCarecategori = [
         shopCategory2(_productImgname: "alovera", _productTitle: "Alovera", _productPrice: 45),
         shopCategory2(_productImgname: "saba", _productTitle: "Saba", _productPrice: 10),
         shopCategory2(_productImgname: "saundrya", _productTitle: "Saundrya", _productPrice: 5),
         shopCategory2(_productImgname: "pondface", _productTitle: "PondFacewash", _productPrice: 6),
         shopCategory2(_productImgname: "ponds", _productTitle: "Ponds", _productPrice: 5),
         shopCategory2(_productImgname: "dove", _productTitle: "Dove", _productPrice: 10),
         shopCategory2(_productImgname: "fairhandSome", _productTitle: "Fair HandSome", _productPrice: 10),
         shopCategory2(_productImgname: "sensitiveSceen", _productTitle: "Facewash", _productPrice: 55),
    ]
    func  personalCareCategories()->[shopCategory2]
    {
       return personalCarecategori
    }
    
    private let medicinecategori = [
         shopCategory2(_productImgname: "amberGlass", _productTitle: "AmberGlass", _productPrice: 45),
         shopCategory2(_productImgname: "antibiotic", _productTitle: "Antibiotic", _productPrice: 10),
         shopCategory2(_productImgname: "bernacit", _productTitle: "Bernacit", _productPrice: 5),
         shopCategory2(_productImgname: "dettol", _productTitle: "Dettol", _productPrice: 6),
         shopCategory2(_productImgname: "cauf", _productTitle: "Cauf", _productPrice: 5),
         shopCategory2(_productImgname: "dayquit", _productTitle: "Dayquit", _productPrice: 10),
         shopCategory2(_productImgname: "dettol", _productTitle: "Dettol", _productPrice: 10),
         shopCategory2(_productImgname: "injection", _productTitle: "Injection", _productPrice: 55),
    ]
    func  medicineCategories()->[shopCategory2]
    {
       return medicinecategori
    }
}


class cookiesDatabaseClass
{
        
    static let cookiesInstance = cookiesDatabaseClass()
        
    private let cookiesIdeasCategories = [
           CookingCategory(_productImgname: "pizza1", _productTitle: "Pizza"),
           CookingCategory(_productImgname: "burger1", _productTitle: "Burger"),
           CookingCategory(_productImgname: "paneer1", _productTitle: "Paneer"),
           CookingCategory(_productImgname: "cake1", _productTitle: "Cake"),
           CookingCategory(_productImgname: "samausa1", _productTitle: "Samausa"),
           CookingCategory(_productImgname: "seekh1", _productTitle: "Veg Seekh"),
           CookingCategory(_productImgname: "chiken1", _productTitle: "Roast Chiken"),
           CookingCategory(_productImgname: "dhosa1", _productTitle: "Ghee Roast Dhosa"),
    ]
    func CookiesCategories1() ->[CookingCategory]
    {
        return cookiesIdeasCategories
    }
    private let pizzacategori = [
         shopCategory2(_productImgname: "cheese", _productTitle: "Cheese pizza", _productPrice: 45),
         shopCategory2(_productImgname: "onion", _productTitle: "Onion pizza", _productPrice: 10),
         shopCategory2(_productImgname: "curd", _productTitle: "Curd Pizza", _productPrice: 5),
         shopCategory2(_productImgname: "roast Pizza", _productTitle: "Roast Pizza", _productPrice: 6),
         shopCategory2(_productImgname: "vegeterian", _productTitle: "Vegeterian pizza", _productPrice: 5),
         shopCategory2(_productImgname: "whole", _productTitle: "Whole Pizza", _productPrice: 10),
         shopCategory2(_productImgname: "sabikatul", _productTitle: "Sabikatul Pizza", _productPrice: 10),
         shopCategory2(_productImgname: "slice", _productTitle: "Slice Pizza", _productPrice: 55),
         shopCategory2(_productImgname: "wineparing", _productTitle: "WineParing pizza", _productPrice: 44),
         shopCategory2(_productImgname: "whole", _productTitle: "Whole pizza", _productPrice: 45)
    ]
    func pizzaCategory()->[shopCategory2]
    {
        return pizzacategori
    }
    private let burgercategori = [
         shopCategory2(_productImgname: "veg", _productTitle: "veg burger", _productPrice: 45),
         shopCategory2(_productImgname: "bigburger", _productTitle: "big burger", _productPrice: 10),
         shopCategory2(_productImgname: "cheeseburger", _productTitle: "cheeseburger", _productPrice: 5),
         shopCategory2(_productImgname: "desiburger", _productTitle: "desiburger", _productPrice: 6),
         shopCategory2(_productImgname: "humburger", _productTitle: "Humburger", _productPrice: 5),
         shopCategory2(_productImgname: "macdonald", _productTitle: "Macdonald", _productPrice: 10),
         shopCategory2(_productImgname: "nonbhej", _productTitle: "Nonbhej", _productPrice: 10),
         shopCategory2(_productImgname: "veg", _productTitle: "Veg burger", _productPrice: 55),
    ]
    func burgerCategory()->[shopCategory2]
    {
        return burgercategori
    }
    private let samausacategori = [
         shopCategory2(_productImgname: "norma;", _productTitle: "Desi samausa", _productPrice: 45),
         shopCategory2(_productImgname: "paneer", _productTitle: "Paneer samausa", _productPrice: 10),
         shopCategory2(_productImgname: "withCream", _productTitle: "Cream samausa", _productPrice: 5),
         shopCategory2(_productImgname: "veg", _productTitle: "veg Samausa", _productPrice: 6),
         shopCategory2(_productImgname: "simples", _productTitle: "samausa", _productPrice: 5),
         shopCategory2(_productImgname: "paneercheese", _productTitle: "Cheese samausa", _productPrice: 10),
         shopCategory2(_productImgname: "nonveg", _productTitle: "Nonbhej samausa", _productPrice: 10),
         shopCategory2(_productImgname: "keema", _productTitle: "keema samausa", _productPrice: 55),
    ]
    func samausaCategory()->[shopCategory2]
    {
        return samausacategori
    }
    private let vegSikhcategori = [
         shopCategory2(_productImgname: "cheesec", _productTitle: "Cheesec", _productPrice: 45),
         shopCategory2(_productImgname: "chickenseekhkawab", _productTitle: "chickenseekhkawab", _productPrice: 10),
         shopCategory2(_productImgname: "seekh1", _productTitle: "seekh", _productPrice: 5),
         shopCategory2(_productImgname: "seekhkawab", _productTitle: "seekhkawab", _productPrice: 6),
         shopCategory2(_productImgname: "vegetable", _productTitle: "vegetable", _productPrice: 5),
         shopCategory2(_productImgname: "vegseekh", _productTitle: "vegseekh", _productPrice: 10)
      
         
    ]
    func vegSikhCategory()->[shopCategory2]
    {
        return vegSikhcategori
    }
    private let roastChickencategori = [
         shopCategory2(_productImgname: "chickenChili", _productTitle: "chickenChili", _productPrice: 45),
         shopCategory2(_productImgname: "chickendishes", _productTitle: "chickendishes", _productPrice: 10),
         shopCategory2(_productImgname: "healthychicken", _productTitle: "healthychicken", _productPrice: 5),
         shopCategory2(_productImgname: "legpiece", _productTitle: "legpiece", _productPrice: 6),
         shopCategory2(_productImgname: "onionchicken", _productTitle: "onionchicken", _productPrice: 5),
         shopCategory2(_productImgname: "smothered", _productTitle: "smothered", _productPrice: 10),
         shopCategory2(_productImgname: "southchicken", _productTitle: "southchicken", _productPrice: 10),
         shopCategory2(_productImgname: "stream", _productTitle: "stream", _productPrice: 55),
    ]
    func roastChickenCategory()->[shopCategory2]
    {
        return roastChickencategori
    }
    private let dhosacategori = [
         shopCategory2(_productImgname: "kanchipuram", _productTitle: "kanchipuram", _productPrice: 45),
         shopCategory2(_productImgname: "laserknown", _productTitle: "laserknown", _productPrice: 10),
         shopCategory2(_productImgname: "millet", _productTitle: "millet", _productPrice: 5),
         shopCategory2(_productImgname: "mixeddal", _productTitle: "mixeddal", _productPrice: 6),
         shopCategory2(_productImgname: "oats", _productTitle: "oats", _productPrice: 5),
         shopCategory2(_productImgname: "simpled", _productTitle: "simpled", _productPrice: 10),
         shopCategory2(_productImgname: "southe", _productTitle: "southe", _productPrice: 10),
         shopCategory2(_productImgname: "masala", _productTitle: "masala", _productPrice: 55),
    ]
    func dhosaCategory()->[shopCategory2]
    {
        return dhosacategori
    }
    private let paneercategori = [
         shopCategory2(_productImgname: "kadhai paneer", _productTitle: "kadhai paneer", _productPrice: 45),
         shopCategory2(_productImgname: "matar paneer", _productTitle: "matar paneer", _productPrice: 10),
         shopCategory2(_productImgname: "sahipaneer", _productTitle: "sahipaneer", _productPrice: 5),
         shopCategory2(_productImgname: "paneerbuttermasala", _productTitle: "paneerbuttermasala", _productPrice: 6),
         shopCategory2(_productImgname: "paneer tikka", _productTitle: "paneer tikka", _productPrice: 5),
         shopCategory2(_productImgname: "Paneer Recipes", _productTitle: "paneer Recipes", _productPrice: 10),
         shopCategory2(_productImgname: "paneer dishes", _productTitle: "paneer dishes", _productPrice: 10),
         shopCategory2(_productImgname: "paneer butter", _productTitle: "paneer butter", _productPrice: 55),

    ]
    func paneerCategory()->[shopCategory2]
    {
        return paneercategori
    }
    private let cakecategori = [
         shopCategory2(_productImgname: "birthday", _productTitle: "birthday", _productPrice: 45),
         shopCategory2(_productImgname: "blackforest", _productTitle: "blackforest", _productPrice: 10),
         shopCategory2(_productImgname: "cakehole", _productTitle: "cakehole", _productPrice: 5),
         shopCategory2(_productImgname: "chocolatee", _productTitle: "chocolatee", _productPrice: 6),
         shopCategory2(_productImgname: "colorful", _productTitle: "colorful", _productPrice: 5),
         shopCategory2(_productImgname: "concreate", _productTitle: "concreate", _productPrice: 10),
         shopCategory2(_productImgname: "cream", _productTitle: "cream", _productPrice: 10),
         shopCategory2(_productImgname: "pesti", _productTitle: "pesti", _productPrice: 55),
    ]
    func cakeCategory()->[shopCategory2]
    {
        return cakecategori
    }

    
}
