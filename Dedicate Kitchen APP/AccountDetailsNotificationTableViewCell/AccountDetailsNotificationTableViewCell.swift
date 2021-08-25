//
//  AccountDetailsNotificationTableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 03/08/2021.
//

import UIKit

class AccountDetailsNotificationTableViewCell: UITableViewCell {

    //MARK:- OUTLETS
    @IBOutlet weak var AccountDetailsNotificationBackView: UIView!
    
    {
        didSet {AccountDetailsNotificationBackView.layer.masksToBounds=true
            
            AccountDetailsNotificationBackView.layer.cornerRadius=11
        }
    }
    
    @IBOutlet weak var AccountDetailsNotificationTitle: UILabel!
        
        
    //MARK:- VARIABLES
        
        
        
    //    MARK:- LIFE_CYCLE
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
