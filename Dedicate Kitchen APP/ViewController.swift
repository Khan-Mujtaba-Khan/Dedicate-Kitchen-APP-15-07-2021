//
//  ViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 15/07/2021.
//

import UIKit
class ViewController: UIViewController {

//    MARK:- OUTLETS
    @IBOutlet weak var NextBtn:UIButton!
    
    
    //    MARK:- VARIABLES
    
    
    //    MARK:- LIFE_CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        }

    //    MARK:- ACTION_BUTTONS
    
    
    @IBAction func ClickNextBtn(_ sender:UIButton){
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Main02ViewController") as! Main02ViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    //    MARK:- APIS
    
    
    
    
    //    MARK:- FUNCTION
    
    
    
    
    //    MARK:- TAbLE_VIEW

}

