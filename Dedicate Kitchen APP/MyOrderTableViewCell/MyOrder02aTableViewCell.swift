//
//  MyOrder02aTableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 29/07/2021.
//

import UIKit

class MyOrder02aTableViewCell: UITableViewCell {

//    MARK:- OUTLETS
    
    
    @IBOutlet weak var MyOrder02aBackView: UIView!
    
    {
        didSet{ MyOrder02aBackView.layer.backgroundColor=#colorLiteral(red: 0.948040545, green: 0.9531713128, blue: 0.957208097, alpha: 1)
            
        }
    }
    
    @IBOutlet weak var MyOrder02aLbl01: UILabel!
    
    
    
    //    MARK:- VARIABLE
    
    
    
    
    
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
