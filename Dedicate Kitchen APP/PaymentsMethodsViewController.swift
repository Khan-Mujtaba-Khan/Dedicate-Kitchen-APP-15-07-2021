//
//  PaymentsMethodsViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 03/08/2021.
//

import UIKit

class PaymentsMethodsViewController: UIViewController {

//    MARK:- OUTLETS
    
    @IBOutlet weak var PaymentMethodsBackBtn: UIButton!
    
    @IBOutlet weak var PaymentMethodsTitleLbl: UILabel!
    
    @IBOutlet weak var PaymentMethodsView01: UIView!
    
    @IBOutlet weak var PaymentMethodsView01btn01: UIButton!
    
    {
        didSet{
            PaymentMethodsView01btn01.layer.masksToBounds=true
            PaymentMethodsView01btn01.layer.cornerRadius=16
        }
    }
    
    @IBOutlet weak var PaymentMethodsView01Lbl01: UILabel!
    
    @IBOutlet weak var PaymentMethodsView01Lbl02: UILabel!
    
    @IBOutlet weak var PaymentMethodsView01CheckBoxBtn: UIButton!
    {
        didSet{
            PaymentMethodsView01CheckBoxBtn.layer.masksToBounds=true
            PaymentMethodsView01CheckBoxBtn.layer.cornerRadius=12
        }
    }
    
    @IBOutlet weak var PaymentMethodsView02: UIView!
    
    @IBOutlet weak var PaymentMethodsView02btn01: UIButton!
    
    {
        didSet{
            PaymentMethodsView02btn01.layer.masksToBounds=true
            PaymentMethodsView02btn01.layer.cornerRadius=16
        }
    }
    
    @IBOutlet weak var PaymentMethodsView02Lbl01: UILabel!
    
    @IBOutlet weak var PaymentMethodsView02Lbl02: UILabel!
    
    @IBOutlet weak var PaymentMethodsView02CheckBoxBtn: UIButton!
    {
        didSet{
            PaymentMethodsView02CheckBoxBtn.layer.masksToBounds=true
            PaymentMethodsView02CheckBoxBtn.layer.cornerRadius=12
        }
    }
    
    
    @IBOutlet weak var PaymentMethodsAppleBtn:UIButton!
    {
        didSet{
            PaymentMethodsAppleBtn.layer.masksToBounds=true
            PaymentMethodsAppleBtn.layer.cornerRadius=8
        }
    }
    
    @IBOutlet weak var PaymentMethodsAddBtn:UIButton!
    
    @IBOutlet weak var PaymentMethodsContinueBtn:UIButton!
    
    
    {
        didSet{
            PaymentMethodsContinueBtn.layer.masksToBounds=true
            PaymentMethodsContinueBtn.layer.cornerRadius=13
        }
    }
    
    //    MARK:- VARIABLE
    
    
    
    
    //    MARK:- LIFE_CYCLE

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

         }
    
    //    MARK:- ACTION_BUTONS
    
    @IBAction func ClickPaymentMethodsBackBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
}

    @IBAction func ClickPaymentMethodCheckBox01(_ sender: UIButton) {
  
        if sender.tag==1
        {
            PaymentMethodsView01CheckBoxBtn.isSelected=true
            PaymentMethodsView02CheckBoxBtn.isSelected=false
        }
    
        else if sender.tag==2
        {
            PaymentMethodsView01CheckBoxBtn.isSelected=false
       
            PaymentMethodsView02CheckBoxBtn.isSelected=true
        }
    
    }
    
    
    
    
    @IBAction func ClickPaymentMethodsContinueBtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "OrderSuccessViewController") as! OrderSuccessViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    
    //    MARK:- APIS

   

}
//    MARK:- FUNCTIONS


//    MARK:- TABLES_VIEWS
