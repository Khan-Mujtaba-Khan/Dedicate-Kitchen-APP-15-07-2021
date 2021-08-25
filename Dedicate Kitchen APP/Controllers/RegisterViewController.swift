//
//  RegisterViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 15/07/2021.
//

import UIKit

class RegisterViewController: UIViewController {
//MARK:- OUTlETS
    @IBOutlet weak var Backbtn:UIButton!
    
    @IBOutlet weak var Registerlbl01:UILabel!
    
    @IBOutlet weak var Registerlbl02:UILabel!
    
    @IBOutlet weak var Registerlbl03:UILabel!
    
    @IBOutlet weak var  EmailTextField:UITextField!
    {
        didSet{EmailTextField.layer.cornerRadius=11
            EmailTextField.layer.masksToBounds=true
            EmailTextField.layer.borderColor=#colorLiteral(red: 0.7093357444, green: 0.851323545, blue: 0.4773437381, alpha: 1)
            EmailTextField.layer.borderWidth=1
            
            
        }
    }
    
    @IBOutlet weak var Password:UITextField!
    {
        didSet{Password.layer.cornerRadius=11
            Password.layer.masksToBounds=true
            Password.layer.borderColor=#colorLiteral(red: 0.7093357444, green: 0.851323545, blue: 0.4773437381, alpha: 1)
            Password.layer.borderWidth=1
            
            
        }
    }
    
    @IBOutlet weak var Confirm_Password:UITextField!
    {
        didSet{Confirm_Password.layer.cornerRadius=11
            Confirm_Password.layer.masksToBounds=true
            Confirm_Password.layer.borderColor=#colorLiteral(red: 0.7093357444, green: 0.851323545, blue: 0.4773437381, alpha: 1)
            Confirm_Password.layer.borderWidth=1
            
            
        }
    }
    
    @IBOutlet weak var SignIn:UIButton!
    {
        didSet{SignIn.layer.cornerRadius=15
            SignIn.layer.masksToBounds=true
            SignIn.layer.borderColor=#colorLiteral(red: 0.301137954, green: 0.346514523, blue: 0.3756545782, alpha: 1)
            SignIn.layer.borderWidth=1
            
            
        }
    }
    @IBOutlet weak var Registerlbl04:UILabel!
    
    @IBOutlet weak var Registerlbl05:UILabel!
    
    @IBOutlet weak var Registerlbl06:UILabel!
    
    @IBOutlet weak var Image:UIImageView!
    
    
    //MARK:- VARIABLES
    
    
    //MARK:- LIFE_CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //MARK:- ACTION-BUTTON
    
    @IBAction func ClickBackBtn(_ sender :Any){
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func ClickSignInBtn(_ sender: Any) {
     
        performSegue(withIdentifier: "RigisterToTabBar", sender: RegisterViewController.self)
        
//        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "HomeMenuViewController")as! HomeMenuViewController
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let vc = segue.destination as! TabBarViewController
        
    }
    
    //MARK:- API
    
    
    
    //MARK:- FUNCTION
    
   
    
    
    //MARK:- TABLE_VIEW
    

}
