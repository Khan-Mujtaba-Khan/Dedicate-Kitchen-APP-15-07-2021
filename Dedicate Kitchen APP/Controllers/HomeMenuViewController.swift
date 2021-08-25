//
//  HomeMenuViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 16/07/2021.
//

import UIKit

class HomeMenuViewController: UIViewController {
//MARK:- OUTLETS
    
    
    @IBOutlet weak var HomeMenuLbl01: UILabel!
    @IBOutlet weak var HomeMenuLbl02 :UILabel!
    @IBOutlet weak var HomeMenuBtn01:UIButton!
@IBOutlet weak var HomeMenuImg01:UIImageView!
    
   
    @IBOutlet weak var HomeMenuLbl03:UILabel!
    
    @IBOutlet weak var HomeMenuLbl04:UILabel!
    @IBOutlet weak var HomeMenutakeoutLbl01:UILabel!
    
    @IBOutlet weak var HomeMenuTakeOutLbl02:UILabel!
    @IBOutlet weak var HomeMenuTakeOutBtn01:UIButton?
    {
        didSet{ HomeMenuTakeOutBtn01?.layer.cornerRadius=11
            HomeMenuTakeOutBtn01?.layer.masksToBounds=true
            
        }
    }
    
    @IBOutlet weak var HomeMenuMealprepLbl01:UILabel!
    
    @IBOutlet weak var HomeMenuMealPrepLbl02:UILabel!
    @IBOutlet weak var HomeMenuMealPrepBtn01:UIButton?
    {
        didSet{ HomeMenuMealprepLbl01?.layer.cornerRadius=11
            HomeMenuMealprepLbl01?.layer.masksToBounds=true
            
        }
    }
    //MARK:- VARIABLES
    
    
    
    //MARK:- LIFE_CYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBOutlet weak var OurMenuBar: UITabBarItem!
   
    
    @IBAction func ClickChangeBackBbtn(_ sender:UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func ClickOurMenuBtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PickUpViewController") as! PickUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func ClickMealPreBtn(_ sender: Any) {
   
        let vc =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MealPreViewController") as! MealPreViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    
    }
   
    
    //MARK:- APIS
    
    
    
    //MARK:- FUNCTION
    
    
    
    //MARK:- COLLECTION_VIEW
}
