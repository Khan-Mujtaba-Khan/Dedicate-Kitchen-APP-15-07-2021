//
//  MyOrder01aTableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 29/07/2021.
//

import UIKit

class MyOrder01aTableViewCell: UITableViewCell {

//    MAKR:- OUTLETS
    
    @IBOutlet weak var MyOrder01aBackview: UIView!
    
    {
        didSet{ MyOrder01aBackview.layer.backgroundColor=#colorLiteral(red: 0.948040545, green: 0.9531713128, blue: 0.957208097, alpha: 1)
            
        }
    }
    @IBOutlet weak var MyOrder01aLbl01: UILabel!
    
    
    
    //    MAKR:- VARIABLES
    
    
    
    
    //    MAKR:- LIFE_CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
