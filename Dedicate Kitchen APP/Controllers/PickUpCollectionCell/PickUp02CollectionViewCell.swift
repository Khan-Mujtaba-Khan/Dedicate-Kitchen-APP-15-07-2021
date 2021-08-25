//
//  PickUp02CollectionViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 22/07/2021.
//

import UIKit

class PickUp02CollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var BackView:UIView!
    {
        didSet{BackView.layer.cornerRadius=30
            BackView.layer.masksToBounds=true
          
            BackView.layer.borderWidth=1
            BackView.layer.borderColor=#colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 1)
            
        }
    }
    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var Lbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
