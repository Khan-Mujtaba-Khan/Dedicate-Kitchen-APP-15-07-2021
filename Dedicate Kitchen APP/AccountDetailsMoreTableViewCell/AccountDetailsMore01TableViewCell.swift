//
//  AccountDetailsMore01TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 03/08/2021.
//

import UIKit

class AccountDetailsMore01TableViewCell: UITableViewCell {

    //MARK:- OUTLETS
        
    @IBOutlet weak var AccountDetailsMore01BackView: UIView!
    
    @IBOutlet weak var AccountDetailsMore01Image: UIImageView!
    
    @IBOutlet weak var AccountDetailsMore01Title: UILabel!
    
    @IBOutlet weak var AccountDetailsMore01SubTitle: UILabel!
    
    @IBOutlet weak var AccountDetailsMore01Btn: UIButton!
    
        
    
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
