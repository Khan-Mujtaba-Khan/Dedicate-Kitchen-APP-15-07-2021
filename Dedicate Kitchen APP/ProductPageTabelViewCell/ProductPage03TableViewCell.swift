//
//  ProductPage03TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 27/07/2021.
//

import UIKit

class ProductPage03TableViewCell: UITableViewCell {

    
//    MARK:- OUTLETS
    
    @IBOutlet weak var ProductPage03Backview01: UIView!
    
    @IBOutlet weak var ProductPage03Lbl01: UILabel!
    @IBOutlet weak var ProductPage03BtnMinus
        : UIButton!
    
    @IBOutlet weak var ProductPage03BtnPlus
        : UIButton!
    @IBOutlet weak var ProductPage03LblPlusMinus: UILabel!
    
    
    //    MARK:- VARIABLES
    
    
    
    
    //    MARK:- LIFE_CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //    MARK:- Action_button
    
    @IBAction func ClickProductPage03BtnMinus(_ sender: Any) {
        
        guard let lblMinus = Int(ProductPage03LblPlusMinus!.text!) else { return }

            let newValue = lblMinus - 1
        ProductPage03LblPlusMinus!.text = String(newValue)
    }
    
        
        
    
    
    @IBAction func ClickProductPage03BtnPlus(_ sender: Any) {
        
        guard let lblMinus = Int(ProductPage03LblPlusMinus!.text!) else { return }

            let newValue = lblMinus + 1
        ProductPage03LblPlusMinus!.text = String(newValue)
    }
    
    
}
