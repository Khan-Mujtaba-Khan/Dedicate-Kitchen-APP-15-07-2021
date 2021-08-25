//
//  SelectAdressViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 31/07/2021.
//

import UIKit

class SelectAdressViewController: UIViewController {

//    MARK:- OUTLETS
    @IBOutlet weak var SelectAdressBackView: UIView!
    
    @IBOutlet weak var SelectAdressBackBtn: UIButton!
    @IBOutlet weak var SelectAdressTitleLbl: UILabel!
    
    @IBOutlet weak var SelectAdressView01: UIView!
    
    @IBOutlet weak var SelectAdressView01Btn01: UIButton!
    
    @IBOutlet weak var SelectAdressView01LoctionLbl01: UILabel!
    
    @IBOutlet weak var SelectAdressView01LoctionLbl02: UILabel!
    
    @IBOutlet weak var SelectAdressView01CheckBtn: UIButton!
    {
        didSet{
            SelectAdressView01CheckBtn.layer.masksToBounds=true
            SelectAdressView01CheckBtn.layer.cornerRadius=12
        }
    }
    
    
    
    @IBOutlet weak var SelectAdressView02: UIView!
    
    @IBOutlet weak var SelectAdressView02Btn01: UIButton!
    
    @IBOutlet weak var SelectAdressView02LoctionLbl01: UILabel!
    
    @IBOutlet weak var SelectAdressView02LoctionLbl02: UILabel!
    
    @IBOutlet weak var SelectAdressView02CheckBtn: UIButton!
    {
        didSet{
            SelectAdressView02CheckBtn.layer.masksToBounds=true
            SelectAdressView02CheckBtn.layer.cornerRadius=12
        }
    }
    
    @IBOutlet weak var SelectAdressAddBtn: UIButton!
    
    
    
    @IBOutlet weak var SelectAdressContinueBtn: UIButton!
    
    {
        didSet{
            SelectAdressContinueBtn.layer.masksToBounds=true
            SelectAdressContinueBtn.layer.cornerRadius=15
        }
    }
    
    
    
    
    //    MARK:- VARIABLES
    
    
    
    
    //    MARK:- LIFE_CYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //    MARK:- ACTION_BUTTONS
    
    
    @IBAction func ClickSelectAdress01VCheckBtn(_ sender: UIButton) {
   
        if sender.tag==1
        {
            SelectAdressView01CheckBtn.isSelected=true
            SelectAdressView02CheckBtn.isSelected=false
            
        }else if sender.tag==2
        {
            SelectAdressView01CheckBtn.isSelected=false
            SelectAdressView02CheckBtn.isSelected=true
        }
        
    
    }
    
    @IBAction func ClickSelectAdressBackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    
    }
    
    @IBAction func ClickSelectAdressContinueBtn(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PaymentsMethodsViewController") as! PaymentsMethodsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
    
    
    //    MARK:- APS
    
    
   

}
//    MARK:- FUNCTION


//    MARK:- TABLES_VIEW

