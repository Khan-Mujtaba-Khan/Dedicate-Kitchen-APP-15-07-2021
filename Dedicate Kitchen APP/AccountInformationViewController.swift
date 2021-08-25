//
//  AccountInformationViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 09/08/2021.
//

import UIKit

class AccountInformationViewController: UIViewController {

   
// MARK:- OURLETS
    
    
    @IBOutlet weak var AccountInformationTopLbl: UILabel!
    
    @IBOutlet weak var AccountInformationFirstView: UIView!
    
    
    @IBOutlet weak var AccountInformationFirstSubView: UIView!
  
    {
        didSet{
            AccountInformationFirstSubView.layer.cornerRadius=7
            AccountInformationFirstSubView.layer.masksToBounds=true
        
        }
    }
    
    @IBOutlet weak var AccountInformationFirstSubViewLbl: UILabel!
    
    @IBOutlet weak var AccountInformationFirstSubViewtextField: UITextField!
    
    
    
    
    
    @IBOutlet weak var AccountInformationSecondView: UIView!
    
    @IBOutlet weak var AccountInformationSecondSubView: UIView!
   
    {
        didSet{
            AccountInformationSecondSubView.layer.cornerRadius=7
            AccountInformationSecondSubView.layer.masksToBounds=true
        
        }
    }
    
    
    @IBOutlet weak var AccountInformationSecondSubViewLbl: UILabel!
    
    
   
    @IBOutlet weak var AccountInformationSecondSubViewtextField: UITextField!
    
    
    
    
    
    @IBOutlet weak var AccountInformationThirdView: UIView!
    
    @IBOutlet weak var AccountInformationThirdSubView: UIView!
    
    {
        didSet{
            AccountInformationThirdSubView.layer.cornerRadius=7
            AccountInformationThirdSubView.layer.masksToBounds=true
        
        }
    }
    
    @IBOutlet weak var AccountInformationThirdSubViewLbl: UILabel!
    
   
    
    @IBOutlet weak var AccountInformationThirdSubViewtextField: UITextField!
   
    
    @IBOutlet weak var AccountInformationbtn : UIButton!
    {
        didSet{
            AccountInformationbtn.layer.cornerRadius=15
            AccountInformationbtn.layer.masksToBounds=true
        
        }
    }
    
    
    
// MARK:- VARIABLE
    
    
    
    
// MARK:- LIFE_CYCLE
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        
        
    }
    
    // MARK:- ACTION_BUTTONS
            
            
    @IBAction func ClickAccountInformationbtn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
        
        
    }
    
            
    // MARK:- APIS
            
            
            
            
               
    

}

// MARK:- FUNCTION




// MARK:- TABLE_VIEW

