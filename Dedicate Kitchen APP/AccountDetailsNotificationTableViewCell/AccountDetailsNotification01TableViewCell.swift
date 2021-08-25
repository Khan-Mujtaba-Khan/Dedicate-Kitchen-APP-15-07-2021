//
//  AccountDetailsNotification01TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 03/08/2021.
//

import UIKit

class AccountDetailsNotification01TableViewCell: UITableViewCell {
    //MARK:- OUTLETS
        
    @IBOutlet weak var AccountDetailsNotification01BackView: UIView!
    
    @IBOutlet weak var AccountDetailsNotification01Image: UIImageView!
    
    @IBOutlet weak var AccountDetailsNotification01Title: UILabel!
    
    @IBOutlet weak var AccountDetailsNotification01SubTitle: UILabel!
  
    
    
    @IBOutlet weak var AccountDetailsNotification01Switch: UISwitch!
    
    @IBOutlet weak var AccountDetailsNotification01Btn: UIButton!
    
    
        
        
    //MARK:- VARIABLES
        
        
        
    //    MARK:- LIFE_CYCLE
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
        AccountDetailsNotification01Switch.transform=CGAffineTransform(scaleX: 0.70, y: 0.70)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
//    MARK:- ACTION_BUTTONS
    
    
    
    @IBAction func ClickAccountDetailsNotification01SwitchBtn(_ sender: UISwitch) {
   
    
    
    }
    
    
    
}
