//
//  MealPre04TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 25/07/2021.
//

import UIKit

class MealPre04TableViewCell: UITableViewCell {
//MARK:- OUTLETS
    @IBOutlet weak var MealPre04Image01: UIImageView!
   
    @IBOutlet weak var MealPre04Lbl01: UILabel!
    
    @IBOutlet weak var MealPre04Lbl02: UILabel!
    @IBOutlet weak var MealPre04Lbl03: UILabel!
    
    
    @IBOutlet weak var MealPre04BackView01: UIView!
    {
        didSet{MealPre04BackView01.layer.masksToBounds=true
            MealPre04BackView01.layer.cornerRadius=13
            MealPre04BackView01.layer.borderWidth=1
            MealPre04BackView01.layer.borderColor=#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)
            MealPre04BackView01.backgroundColor=#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)
        }
    }
    @IBOutlet weak var MealPre04Btn01: UIButton!
    {
        didSet{MealPre04Btn01.layer.masksToBounds=true
            MealPre04Btn01.layer.cornerRadius=15
            MealPre04Btn01.layer.borderWidth=1
            MealPre04Btn01.layer.borderColor=#colorLiteral(red: 0.7214965224, green: 0.7216194272, blue: 0.725785315, alpha: 1)
           
        }
    }
    @IBOutlet weak var MealPre04Btn02: UIButton!
    {
        didSet{MealPre04Btn02.layer.masksToBounds=true
            MealPre04Btn02.layer.cornerRadius=15
            MealPre04Btn02.layer.borderWidth=1
            MealPre04Btn02.layer.borderColor=#colorLiteral(red: 0.7214965224, green: 0.7216194272, blue: 0.725785315, alpha: 1)
           
        }
    }
    @IBOutlet weak var MealPre04Btn03: UIButton!
    {
        didSet{MealPre04Btn03.layer.masksToBounds=true
            MealPre04Btn03.layer.cornerRadius=15
            MealPre04Btn03.layer.borderWidth=1
            MealPre04Btn03.layer.borderColor=#colorLiteral(red: 0.7214965224, green: 0.7216194272, blue: 0.725785315, alpha: 1)
           
        }
    }
    
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
    
    @IBAction func ClickMealPre04HeartBtn(_ sender: UIButton) {
   
        if (sender.imageView?.image==UIImage(named: "Heart_fill_Red_Color") )
        {
            sender.setImage(UIImage(named: "Heart_fill_Gray_Color"), for: .normal)
            
            }else
    
        
        {
            sender.setImage(UIImage(named: "Heart_fill_Red_Color"), for: .normal)
        }
        
            
            
        
    }
    
    
    
    
    
    
    @IBAction func ClickMealPre04AddBtn(_ sender: UIButton) {
    
        guard let Addlbl = Int(MealPre04Lbl03!.text!)
                
                else { return  }
        let newAdd = Addlbl + ListMealPrePriceLbl.index(after: 2)
        
        MealPre04Lbl03!.text! = String(newAdd)
    }
    
    @IBAction func ClickMealPre04MinusBtn(_ sender: UIButton) {
    }
    
    
    
}
