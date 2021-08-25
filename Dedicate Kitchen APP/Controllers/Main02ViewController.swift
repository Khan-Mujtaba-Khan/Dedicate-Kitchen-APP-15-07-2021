//
//  Main02ViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 15/07/2021.
//

import UIKit

class Main02ViewController: UIViewController {
//MARK:- OUTLETS
    

    @IBOutlet weak var Main02Lbl1:UILabel!
    
    @IBOutlet weak var Main02Img1: UIImageView!
    
    @IBOutlet weak var Main02SigninBtn01 :UIButton!
    {
        didSet{Main02SigninBtn01.layer.cornerRadius=14
            Main02SigninBtn01.layer.masksToBounds=true
            
        }
    }
    @IBOutlet weak var Main02RegisterBtn01:UIButton!
    {
        didSet{Main02RegisterBtn01.layer.cornerRadius=14
            Main02RegisterBtn01.layer.masksToBounds=true
            
        }
    }
    @IBOutlet weak var Main02Lbl02:UILabel!
    
    @IBOutlet weak var Main02Facebookbtn:UIButton!
    {
        didSet{Main02Facebookbtn.layer.cornerRadius=14
            Main02Facebookbtn.layer.masksToBounds=true
            
        }
    }
    
    @IBOutlet weak var Main02Facebookimg:UIImageView!
    {
        didSet{Main02Facebookimg.layer.cornerRadius=11
            Main02Facebookimg.layer.masksToBounds=true
            
        }
    }
    
    @IBOutlet weak var Main02GoogleBtn:UIButton!
    
    {
        didSet{Main02GoogleBtn.layer.cornerRadius=14
            Main02GoogleBtn.layer.masksToBounds=true
            
        }
    }
    @IBOutlet weak var Main02Googleimg:UIImageView!
    {
        didSet{Main02Googleimg.layer.cornerRadius=11
            Main02Googleimg.layer.masksToBounds=true
            
        }
    }
    
    //MARK:- VARIABLES
        
    
    
    //MARK:- LIFE_CYCLE
        
        
    override func viewDidLoad() {
        super.viewDidLoad()

        }
    //MARK:- ACTION_BUTTONS
    
    @IBAction func ClickSignBtn(_sender:UIButton){
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SignInViewController") as! SignInViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    @IBAction func ClickRegisterBtn(_sender:Any)
    {
        let vc=UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "RegisterViewController") as!
        RegisterViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
        
    @IBAction func ClickFackbookBtn(_ sender:Any){
        
        UIApplication.shared.openURL(NSURL(string: "https://m.facebook.com/login.php?refsrc=https%3A%2F%2Fm.facebook.com%2Flogin.php")! as URL)
        }
    
    @IBAction func ClickGoogleBtn(_ sender:Any){
    
     UIApplication.shared.openURL(NSURL(string: "https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmyaccount.google.com%3Futm_source%3Daccount-marketing-page%26utm_medium%3Dcreate-account-button&flowName=GlifWebSignIn&flowEntry=ServiceLogin")! as URL)
    }
        
//    ?\let url = NSURL (string: "http://www.apple.com")
//    url.loadRequest(NSURLRequest(URL: url!))
   
    

    
    //MARK:- APIS
        
//    MARK:- FUNCTION
    
    
    
    //MARK:- TABLE_VIEW
        
        

}
