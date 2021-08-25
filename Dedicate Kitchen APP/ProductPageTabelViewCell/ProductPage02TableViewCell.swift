//
//  ProductPage02TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 27/07/2021.
//

import UIKit

class ProductPage02TableViewCell: UITableViewCell {
    //MARK:- OUTLETS

    @IBOutlet weak var Product02BackView01: UIView!
    
    @IBOutlet weak var Product02BackView02: UIView!
    {
        didSet{
            Product02BackView02.layer.masksToBounds=true
            Product02BackView02.layer.cornerRadius=12
            
        }
        
    }
    
    
    @IBOutlet weak var Product02Lbl01: UILabel!
    
    @IBOutlet weak var Product02Lbl02: UILabel!
    
    @IBOutlet weak var Product02LblNo01: UILabel!
    
    @IBOutlet weak var Product02LblNo02: UILabel!
    @IBOutlet weak var Product02LblNo03: UILabel!
    @IBOutlet weak var Product02LblNo04: UILabel!
    
    @IBOutlet weak var Product02LblNo05: UILabel!
    
    @IBOutlet weak var Product02BtnNo01: UIButton!
    
    @IBOutlet weak var Product02BtnNo02: UIButton!
    
    @IBOutlet weak var Product02BtnNo03: UIButton!
    
    @IBOutlet weak var Product02BtnNo04: UIButton!
    
    @IBOutlet weak var Product02BtnNo05:
        UIButton!
 
    
    
    //MARK:- VARIBLES

    
    
    
    
    //MARK:- LIFE_CYCLE

    
    
    @IBAction func ClickProduct02BtnNo01(_ sender: UIButton) {
   
if sender.tag == 1 {
    Product02BtnNo01.isSelected=true
    Product02BtnNo02.isSelected=false
    Product02BtnNo03.isSelected=false
    Product02BtnNo04.isSelected=false
    Product02BtnNo05.isSelected=false
            
        }
else if sender.tag==2{
    
    Product02BtnNo01.isSelected=false
    Product02BtnNo02.isSelected=true
    Product02BtnNo03.isSelected=false
    Product02BtnNo04.isSelected=false
    Product02BtnNo05.isSelected=false
    
    
    
}
else if sender.tag==3{
    
    Product02BtnNo01.isSelected=false
    Product02BtnNo02.isSelected=false
    Product02BtnNo03.isSelected=true
    Product02BtnNo04.isSelected=false
    Product02BtnNo05.isSelected=false
    
    
    
}else if sender.tag==4{
    
    Product02BtnNo01.isSelected=false
    Product02BtnNo02.isSelected=false
    Product02BtnNo03.isSelected=false
    Product02BtnNo04.isSelected=true
    Product02BtnNo05.isSelected=false
    
    
    
} else if sender.tag==5
{
    Product02BtnNo01.isSelected=false
    Product02BtnNo02.isSelected=false
    Product02BtnNo03.isSelected=false
    Product02BtnNo04.isSelected=false
    Product02BtnNo05.isSelected=true
    
}
        
    
    
    }
    override func awakeFromNib() {
        super.awakeFromNib()


        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }
    
  
}
