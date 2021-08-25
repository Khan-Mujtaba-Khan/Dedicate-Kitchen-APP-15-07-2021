//
//  MealPre01TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 24/07/2021.
//

import UIKit

class MealPre01TableViewCell: UITableViewCell {
//MARK:- OUTLETS
    @IBOutlet weak var MealPreBackView:UIView!
    {
        didSet{MealPreBackView.layer.masksToBounds=true
            MealPreBackView.layer.cornerRadius=13
            MealPreBackView.layer.borderWidth=1
            MealPreBackView.layer.borderColor=#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)
            MealPreBackView.backgroundColor=#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)
//            MealPreBackView.layer.backgroundColor=#colorLiteral(red: 0.9441192746, green: 0.9492495656, blue: 0.953287065, alpha: 1)
        }
    }
    @IBOutlet weak var MealPreImg01:UIImageView!
   
    @IBOutlet weak var MealPreLbl01:UILabel!
    @IBOutlet weak var MealPreLbl02:UILabel!
    
    @IBOutlet weak var MealPrePlusBtn:UIButton!
    
    {
        didSet{MealPrePlusBtn.layer.masksToBounds=true
            MealPrePlusBtn.layer.cornerRadius=15
            MealPrePlusBtn.layer.borderWidth=1
            MealPrePlusBtn.layer.borderColor=#colorLiteral(red: 0.7214965224, green: 0.7216194272, blue: 0.725785315, alpha: 1)
           
        }
    }
    @IBOutlet weak var MealPreMinusBtn:UIButton!
    {
        didSet{MealPreMinusBtn.layer.masksToBounds=true
            MealPreMinusBtn.layer.cornerRadius=15
            MealPreMinusBtn.layer.borderWidth=1
            MealPreMinusBtn.layer.borderColor=#colorLiteral(red: 0.7214965224, green: 0.7216194272, blue: 0.725785315, alpha: 1)
           
        }
    }
    @IBOutlet weak var MealPreFavouiteBtn:UIButton!
    {
        didSet{MealPreFavouiteBtn.layer.masksToBounds=true
            MealPreFavouiteBtn.layer.cornerRadius=15
            MealPreFavouiteBtn.layer.borderWidth=1
            MealPreFavouiteBtn.layer.borderColor=#colorLiteral(red: 0.7214965224, green: 0.7216194272, blue: 0.725785315, alpha: 1)
           
        }
    }
    @IBOutlet weak var MealPreLbl03:UILabel!
    
    
    //MARK:- VARIABLE
    
    
    
    
    //MARK:- LIFE_CYCLE
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    
    
//    MARK:- ACTION_BUTTONS
    
    @IBAction func ClickMealPre01HeartBtn(_ sender: UIButton) {
    
        if (sender.imageView?.image == UIImage(named: "Heart_fill_Red_Color") )
        {
            sender.setImage(UIImage(named: "Heart_fill_Gray_Color"), for:.normal)
            
        }else
        {
            sender.setImage(UIImage(named: "Heart_fill_Red_Color"), for: .normal)
            
        }
    
    }
    
    
    
    
}
