//
//  AccountDetailsGeneral01TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 03/08/2021.
//

import UIKit

class AccountDetailsGeneral01TableViewCell: UITableViewCell {

    //MARK:- OUTLETS
        
    @IBOutlet weak var AccountDetailsGeneral01BackView: UIView!
    
   
    
    
    @IBOutlet weak var AccountDetailsGeneral01Image: UIImageView!
    
    @IBOutlet weak var AccountDetailsGeneral01Title: UILabel!
    
    @IBOutlet weak var AccountDetailsGeneral01SubTitle: UILabel!
    
    @IBOutlet weak var AccountDetailsGeneral01Btn: UIButton!
    
    
    //MARK:- VARIABLES
    var OnClickContinue: (()->(Void))?
        
    var AccountInformationBtn1:(()->(Void))?
    
    var AccountInformationBtn2:(()->(Void) )?
    
    
    var AccountInformationBtn3:(( )->(Void) )?
    
    
    
    var AccountInformationBtn4:(()->(Void))?
    
    
    var AccountInformationBtn5:(()->(Void))?
    
    //    MARK:- LIFE_CYCLE
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    
    
    
    
    
    @IBAction func ClickAccountInformationBtn(_ sender: UIButton){
        
        AccountInformationBtn1?()
        
        AccountInformationBtn2?()
        
        AccountInformationBtn3?()
        
        AccountInformationBtn4?()
        
        AccountInformationBtn5?()
        
        
    }
    
    
    
}
