//
//  AccountDetailsMoreTableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 03/08/2021.
//

import UIKit

class AccountDetailsMoreTableViewCell: UITableViewCell {
    //MARK:- OUTLETS
        
    @IBOutlet weak var AccountDetailsMoreBackView: UIView!
    {
        didSet {AccountDetailsMoreBackView.layer.masksToBounds=true
            
            AccountDetailsMoreBackView.layer.cornerRadius=11
        }
    }
    
    @IBOutlet weak var AccountDetailsMoreTitle: UILabel!
        
    //MARK:- VARIABLES
        
        
        
    //    MARK:- LIFE_CYCLE
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
