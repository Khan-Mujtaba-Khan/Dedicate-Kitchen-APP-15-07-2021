//
//  CollectionViewCell003.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 20/07/2021.
//

import UIKit

class CollectionViewCell003: UICollectionViewCell {

    @IBOutlet weak var Collection003View: UIView!
    
    {
        didSet{Collection003View.layer.cornerRadius=15
            Collection003View.layer.masksToBounds=true
            Collection003View.layer.backgroundColor=#colorLiteral(red: 0.9881381392, green: 0.9883032441, blue: 0.9881164432, alpha: 1)
            Collection003View.layer.borderWidth=1
            Collection003View.layer.borderColor=#colorLiteral(red: 0.9450049996, green: 0.9451633096, blue: 0.9492896199, alpha: 1)
        }
    }
    
    @IBOutlet weak var Collection003Img: UIImageView!
    
    @IBOutlet weak var Collection003Lbl01: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
