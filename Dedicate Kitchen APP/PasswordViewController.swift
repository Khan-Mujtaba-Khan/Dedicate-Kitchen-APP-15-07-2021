//
//  PasswordViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 09/08/2021.
//

import UIKit



class PasswordViewController: UIViewController{
    

   
    

    
    
    
    // MARK:- OURLETS
        
    @IBOutlet weak var ChangeSettingBtn: UIButton!
    {
        didSet{
            ChangeSettingBtn.layer.masksToBounds=true
            ChangeSettingBtn.layer.cornerRadius=14
        }
    }
    
    @IBOutlet weak var TableViewPassword:UITableView!
        
    // MARK:- VARIABLE
        
        
        
        
    // MARK:- LIFE_CYCLE
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        
      }
    

    // MARK:- ACTION_BUTTONS
            
            
    @IBAction func ClickChangeSettingBtn (_ sender : UIButton ){
        self.navigationController?.popViewController(animated: true)
        
    }
            
    // MARK:- APIS
            
            
            
            
               
    

}

// MARK:- FUNCTION




// MARK:- TABLE_VIEW
   

