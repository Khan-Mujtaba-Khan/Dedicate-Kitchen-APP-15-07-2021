//
//  ProductPage05TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 27/07/2021.
//

import UIKit

class ProductPage05TableViewCell: UITableViewCell {

    @IBOutlet weak var ProductPage05Btn01: UIButton!
    {
        didSet{
            ProductPage05Btn01.layer.cornerRadius = 11
            ProductPage05Btn01.layer.masksToBounds=true
        }
        
}
    
    
//    MARK:- OUTLETS
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
