//
//  AccountDetailsGeneralTableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 03/08/2021.
//

import UIKit

class AccountDetailsGeneralTableViewCell: UITableViewCell {
//MARK:- OUTLETS
    
    @IBOutlet weak var AccountDetailsGeneralBackView: UIView!
    {
        didSet {AccountDetailsGeneralBackView.layer.masksToBounds=true
            
            AccountDetailsGeneralBackView.layer.cornerRadius=11
        }
    }
    @IBOutlet weak var AccountDetailsGeneralTitle: UILabel!
    
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
