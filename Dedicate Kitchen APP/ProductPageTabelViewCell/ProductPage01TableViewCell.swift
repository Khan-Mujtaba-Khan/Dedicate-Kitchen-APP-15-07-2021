//
//  ProductPage01TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 27/07/2021.
//

import UIKit

class ProductPage01TableViewCell: UITableViewCell {
//MARK:- OUTLETS
    @IBOutlet weak var ProductPage01BackView: UIView!
    
    @IBOutlet weak var ProductPage01Lbl01: UILabel!
    
    @IBOutlet weak var ProductPage01Lbl02: UILabel!
    @IBOutlet weak var ProductPage01Lbl03: UILabel!
    
    //MARK:- VARIABLES
    
    
    
    //MARK:- LIFE_CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
