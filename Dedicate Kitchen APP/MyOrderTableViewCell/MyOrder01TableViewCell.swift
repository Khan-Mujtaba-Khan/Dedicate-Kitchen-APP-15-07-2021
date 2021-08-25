//
//  MyOrder01TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 29/07/2021.
//
import UIKit
class MyOrder01TableViewCell: UITableViewCell {

    //MARK:- OUTLETS
    @IBOutlet weak var MyOrder01Backview01: UIView!
    
    {
        didSet{
            MyOrder01Backview01.layer.backgroundColor=#colorLiteral(red: 0.948040545, green: 0.9531713128, blue: 0.957208097, alpha: 1)
        }
        
    }
    @IBOutlet weak var MyOrder01Backview02: UIView!
    {
        
        didSet{ MyOrder01Backview02.layer.backgroundColor=#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            MyOrder01Backview02.layer.cornerRadius=9
            MyOrder01Backview02.layer.masksToBounds = true
            
            
        }
    }
    @IBOutlet weak var MyOrder01Backview03: UIView!
    @IBOutlet weak var MyOrder01Img01: UIImageView!
    @IBOutlet weak var MyOrder01LblTop01: UILabel!
    @IBOutlet weak var MyOrder01LblTop02: UILabel!
    @IBOutlet weak var MyOrder01LblButtom01DateTitle : UILabel!
    @IBOutlet weak var MyOrder01LblButtom01Date: UILabel!
    @IBOutlet weak var MyOrder01LblButtom01MethodpickTitle: UILabel!
    @IBOutlet weak var MyOrder01LblButtom01HomeDeliveryTitle: UILabel!
    @IBOutlet weak var MyOrder01AddBtn: UIButton!
    {didSet{ MyOrder01AddBtn.layer.cornerRadius=15
            MyOrder01AddBtn.layer.masksToBounds=true}}
    @IBOutlet weak var MyOrder01HeartBtn: UIButton!
    {
        didSet{ MyOrder01HeartBtn.layer.cornerRadius=15
            MyOrder01HeartBtn.layer.masksToBounds=true
            }}
    
    
    
    //MARK:- VARIABLES
    
    
    
    
    
    
    
    
    
    //MARK:- LIFE_CYCLE
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
  
    
    
//    MARK:- ACTION_BUTTON
    
    @IBAction func ClickMyOrder01AddBtn(_ sender: UIButton) {
    
    
    }
    
    
    @IBAction func ClickMyOrder01HeartBtn(_ sender: UIButton) {
    
        if (sender.imageView?.image == UIImage(named: "Heart_fill_Red_Color"))
        {
            sender.setImage(UIImage(named: "Heart_fill_Gray_Color"), for: .normal)
        
        }else
        {
            sender.setImage(UIImage(named: "Heart_fill_Red_Color"), for: .normal)
        }
        
        
        
    
    }
    
    
    
    
}
