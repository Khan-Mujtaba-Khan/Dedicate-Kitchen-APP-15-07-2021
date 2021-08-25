//
//  MealPre03TableViewCell.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 24/07/2021.
//

import UIKit

class MealPre03TableViewCell: UITableViewCell {
//MARK:- OUTLETS
    
    @IBOutlet weak var MealPre03BackView01: UIView!
    
    @IBOutlet weak var CollectionViewMealpre03: UICollectionView!
    
    
    //MARK:- VARIABLE
    var ListMealPreImg01 = [#imageLiteral(resourceName: "MealPreImage03"),#imageLiteral(resourceName: "MealPreImage04"),#imageLiteral(resourceName: "MealPreImage01"),#imageLiteral(resourceName: "MealPreImage05"),#imageLiteral(resourceName: "MealPreImage03"),#imageLiteral(resourceName: "MealPreImage04"),#imageLiteral(resourceName: "MealPreImage01"),#imageLiteral(resourceName: "MealPreImage05")]
    var ListMealPreTitleLbl = ["Philly Steak Bowl","Dressed Steak","Keto Cheeseburger Bowl","Orange-Terragon Salmon","Philly Steak Bowl","Dressed Steak","Keto Cheeseburger Bowl","Orange-Terragon Salmon"]
    
    
    
    
    //MARK:- LIFE_CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        SetShow()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
   
    //MARK:- ACTION_BUTTON
    
    
    
    //MARK:- APIS
    
    
    
    //MARK:- FUNCTION
    
    func SetShow(){
        
        CollectionViewMealpre03.delegate=self
        CollectionViewMealpre03.dataSource=self
        CollectionViewMealpre03.register(UINib(nibName: "MealPre01CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MealPre01CollectionViewCell")
        CollectionViewMealpre03.register(UINib(nibName: "MealPre02CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "MealPre02CollectionViewCell")
        
    }
    
    
    
}
//MARK:- COLLECTION_View



extension MealPre03TableViewCell:UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        switch section {
        
        case 0:
        
           
            
            return ListMealPreImg01.count
            
        case 1:
            return ListMealPreTitleLbl.count
            
        default :
                print("")
            
            }
        
        return 0
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        
        case 0:
        
            let cell = CollectionViewMealpre03.dequeueReusableCell(withReuseIdentifier: "MealPre01CollectionViewCell", for: indexPath) as! MealPre01CollectionViewCell
            
            cell.MealPre01CollectionViewImage.image=ListMealPreImg01[indexPath.row]
            cell.MealPre01CollectionViewLbl01?.text = ListMealPreTitleLbl[indexPath.row]
            return cell
            
        case 1:
            
        let    cell = CollectionViewMealpre03.dequeueReusableCell(withReuseIdentifier: "MealPre02CollectionViewCell", for: indexPath) as! MealPre02CollectionViewCell

            cell.MealPre02CollectionViewLbl01.text=ListMealPreTitleLbl[indexPath.row]
            
            return cell
            
        default :
                print("")
            
            }
        
        return UICollectionViewCell()
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.section {
        
        case 0:
        
            let CollectionHight = CollectionViewMealpre03.frame.height
            let CollectionWidth = CollectionViewMealpre03.frame.width
            
            return CGSize(width: CollectionWidth/3-5, height:170 )
            
        case 1:
            return CGSize (width: 0, height: 0)
            
        default :
                print("")
            
            }
        
        return CGSize.zero
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        
        switch section {
        
        case 0:
        
        
            return 1
            
        case 1:
            return 0
            
        default :
                print("")
            
            }
        
        return 0
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        switch section {
        
        case 0:
        
            return 1
            
        case 1:
            return 0
            
        default :
                print("")
            
            }
        
        return 0
    }
}


