//
//  OrderSuccessViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 03/08/2021.
//

import UIKit

class OrderSuccessViewController: UIViewController {

//    MARK:- OUTLETS
    
    @IBOutlet weak var OrderSuccessBackView: UIView!
    @IBOutlet weak var OrderSuccessBackViewImage: UIImageView!
    
    @IBOutlet weak var OrderSuccessBackSubView: UIView!
    {
        didSet{OrderSuccessBackSubView.layer.masksToBounds=true
            OrderSuccessBackSubView.layer.cornerRadius=20
            
        }
    }
    
    
    @IBOutlet weak var OrderSuccessBackSubViewImage: UIImageView!
    
    @IBOutlet weak var OrderSuccessBackSubViewTitle: UILabel!
    
    @IBOutlet weak var OrderSuccessBackSubViewSubTitle: UILabel!
    
    @IBOutlet weak var OrderSuccessBackSubViewBtn: UIButton!
    {
        didSet{OrderSuccessBackSubViewBtn.layer.masksToBounds=true
            OrderSuccessBackSubViewBtn.layer.cornerRadius=13
            
        }
        
    }
    
    
    
    
    
    //    MARK:- VARIABLE
    
    
    
    
    
    //    MARK:- LIFE_CYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    //    MARK:- ACTION_BUTTONS
    
    @IBAction func OrderSuccessContinueBtn(_ sender : UIButton){
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MyOrderViewController") as! MyOrderViewController
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    //    MARK:- APS
    
    

  
} //    MARK:- FUNCTION




//    MARK:- TABLE_VIEW
