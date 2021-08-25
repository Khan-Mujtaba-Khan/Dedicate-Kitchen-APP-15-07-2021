//
//  MyBag01TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 30/07/2021.
//

import UIKit

class MyBag01TableViewCell: UITableViewCell {

//    MARK:- OUTLET
    
    @IBOutlet weak var MyBagBackView01: UIView!
    @IBOutlet weak var MyBagBackView02: UIView!
    
    @IBOutlet weak var MyBagImage01: UIImageView!
    
    @IBOutlet weak var MybagTitleLbl: UILabel!
    
    @IBOutlet weak var MybagSubTitleLbl: UILabel!
    
    
    @IBOutlet weak var MybagPriceLbl: UILabel!
    
    @IBOutlet weak var MyBagEditBtn: UIButton!
    @IBOutlet weak var MyBagAddBtn: UIButton!
    {
        didSet{MyBagAddBtn.layer.cornerRadius=15
            MyBagAddBtn.layer.masksToBounds=true}
    }
    @IBOutlet weak var MyBagSubtractBtn: UIButton!
    {
        didSet{MyBagSubtractBtn.layer.cornerRadius=15
            MyBagSubtractBtn.layer.masksToBounds=true}
    }
    //    MARK:- VARIABLES
    
    
    
    
    
    //    MARK:- LIFE_CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
//    MARK:- ACTION_BUTTON
    
    @IBAction func ClickMyBagAddBtn(_ sender: UIButton) {
        
        guard let Multiply = Int(MybagPriceLbl.text!)
        else {
            return
        }
        let Newvalue = Multiply + MybagPriceLbl.hashValue
        
        MybagPriceLbl.text! = String(Newvalue)
    }
    @IBAction func ClickMyBagSubtractBtn(_ sender:UIButton){
        
        guard let  Subtract = Int(MybagSubTitleLbl.text!)
        else{
            return
        }
        let NewValue = Subtract - MybagSubTitleLbl.hash
        
        
    }
    
}
