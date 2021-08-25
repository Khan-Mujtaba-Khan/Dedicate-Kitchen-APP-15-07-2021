//
//  MyOrder02TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 29/07/2021.
//

import UIKit

class MyOrder02TableViewCell: UITableViewCell {

//    MARK:- OUTLETS
    
    @IBOutlet weak var MyOrder02Backview01: UIView!
    
    
    {
        didSet{ MyOrder02Backview01.layer.backgroundColor=#colorLiteral(red: 0.9353850484, green: 0.9454911351, blue: 0.949441731, alpha: 1)
            
        }
    }
    
    @IBOutlet weak var MyOrder02Backview02: UIView!
    {
        
        didSet{ MyOrder02Backview02.layer.backgroundColor=#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            MyOrder02Backview02.layer.cornerRadius=9
            MyOrder02Backview02.layer.masksToBounds=true
            
            
        }
    }
    
    @IBOutlet weak var MyOrder02Backview03: UIView!
    
    @IBOutlet weak var MyOrder02Img01: UIImageView!
    
    @IBOutlet weak var MyOrder02LblTop01: UILabel!
    
    @IBOutlet weak var MyOrder02LblTop02: UILabel!
    
    @IBOutlet weak var MyOrder02LblButtom01DateTitle : UILabel!
    
    @IBOutlet weak var MyOrder02LblButtom01Date: UILabel!
    
    @IBOutlet weak var MyOrder02LblButtom01MethodpickTitle: UILabel!
    
    @IBOutlet weak var MyOrder02LblButtom01HomeDeliveryTitle: UILabel!
   
    @IBOutlet weak var MyOrder02AddBtn: UIButton!
    {
        
        didSet{ MyOrder02AddBtn.layer.cornerRadius=15
            MyOrder02AddBtn.layer.masksToBounds=true
            
            
        }
    }
    
    
    
    @IBOutlet weak var MyOrder02HeartBtn: UIButton!
    
    {
        
        didSet{ MyOrder02HeartBtn.layer.cornerRadius=15
            MyOrder02HeartBtn.layer.masksToBounds=true
            
            
        }
    }
    
    
//MARK:- VARIABLE
    
    
    
//   MARK:- LIFE_CYCLE
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        
    }
 
//    MARK:- ACTION_BUTTION
    
    
    @IBAction func ClickMyOrder02aHeartBtn(_ sender:UIButton)
    {
    
       if (sender.imageView?.image==UIImage(named: "Heart_fill_Red_Color"))
       {(sender.setImage(UIImage(named: "Heart_fill_Gray_Color"), for: .normal))
            
        }else
       {
        sender.setImage(UIImage(named: "Heart_fill_Red_Color"), for: .normal)
        
       }
        
    
    }
    
    @IBAction func ClickMyOrder02aAddBtn(_ sender:UIButton){
        
        
    }
    
    
}
