//
//  SignInViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 15/07/2021.
//

import UIKit

class SignInViewController: UIViewController {
//MARK:- OUTLETS
    @IBOutlet weak var BackBtn:UIButton!
    
    
    @IBOutlet weak var SignInlbl01:UILabel!
    @IBOutlet weak var  SignInlbl02:UILabel!
    @IBOutlet weak var SignInlbl03:UILabel!
    
    @IBOutlet weak var EmailTextField:UITextField!
    {
        didSet{
            EmailTextField.layer.masksToBounds=true
            EmailTextField.layer.cornerRadius=11
            EmailTextField.layer.borderWidth=1
            EmailTextField.layer.borderColor=#colorLiteral(red: 0.6964002252, green: 0.8436121345, blue: 0.4499790668, alpha: 1)
        }
    }
    @IBOutlet weak var PasswordTextField:UITextField!
    {
        didSet{
            PasswordTextField.layer.masksToBounds=true
            PasswordTextField.layer.cornerRadius=11
            PasswordTextField.layer.borderWidth=1
            PasswordTextField.layer.borderColor=#colorLiteral(red: 0.6964002252, green: 0.8436121345, blue: 0.4499790668, alpha: 1)
        }
    }
    @IBOutlet weak var ForgetBtn:UIButton!
    @IBOutlet weak var SiginBtn:UIButton!
    {
        didSet{
            SiginBtn.layer.masksToBounds=true
            SiginBtn.layer.cornerRadius=15
           
        }
        }
    @IBOutlet weak var Image:UIImageView!
    
    
    //MARK:- VARIABES
    
    
    //MARK:- LIFE_CYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
          }
    //MARK:- ACTION_BUTTONS
    @IBAction func ClickBackBtn(_ sender:Any){
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    @IBAction func ClickSignInBtn(_ sender:Any){

        performSegue(withIdentifier: "SignInToTabBar", sender: SignInViewController.self)
        
        
        //        let  vc = UIStoryboard(name: "Main", bundle:nil).instantiateViewController(identifier: "HomeMenuViewController") as! HomeMenuViewController
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let vc = segue.destination as! TabBarViewController
        
    }
    
    
    //MARK:-APIS
    
    
    //MARK:- FUNCTION
    

    
    //MARK:-TABLE_VIEWS
}
