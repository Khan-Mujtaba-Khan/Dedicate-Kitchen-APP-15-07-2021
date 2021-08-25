//
//  MyBag02TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 30/07/2021.
//

import UIKit

class MyBag02TableViewCell: UITableViewCell {

    
    //    MARK:- OUTLET
        
    @IBOutlet weak var MyBag02BackMainView: UIView!
    
    { didSet{ MyBag02BackMainView.layer.cornerRadius=35
        MyBag02BackMainView.layer.masksToBounds=true}
    }
    
    @IBOutlet weak var MyBag02BackBarView: UIView!
    
    {
       didSet {
        MyBag02BackBarView.layer.masksToBounds=true
        MyBag02BackBarView.layer.cornerRadius=2.5
        
        }
    }
    @IBOutlet weak var MyBag02BackSubView: UIView!
        
    @IBOutlet weak var MyBag02SubTotalLbl: UILabel!
    @IBOutlet weak var MyBag02TaxAndFeeLbl: UILabel!
    @IBOutlet weak var MyBag02DeliveryLbl: UILabel!
    
    @IBOutlet weak var MyBag02TotalLbl: UILabel!
    
    @IBOutlet weak var MyBag02SubTotalPriceLbl:UILabel!
    @IBOutlet weak var MyBag02TaxAndFeePriceLbl:UILabel!
    
    @IBOutlet weak var MyBag02DeliveryPriceLbl:UILabel!
    
    @IBOutlet weak var MyBag02TotalPriceLbl:UILabel!
    
    
    @IBOutlet weak var MyBag02ContinueBtn:UIButton!
    {
        didSet{
            MyBag02ContinueBtn.layer.cornerRadius=15
            MyBag02ContinueBtn.layer.masksToBounds=true
        }
    }
    
        //    MARK:- VARIABLES
        
//    var onClickContinue : (()->(Void))?
        
    var OnClickContinue: (()->(Void))?
        
    
    
        //    MARK:- LIFE_CYCLE
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    //    MARK:- ACTION_BUTTONS
    
    @IBAction func ClickMyBag02ContinueBtn(_ sender: UIButton) {
//        onClickContinue?()
    
        OnClickContinue?()
        
        
    }
    
    
    
}
