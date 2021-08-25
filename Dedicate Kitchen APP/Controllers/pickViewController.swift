//
//  pickViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 19/07/2021.
//

import UIKit

class pickViewController: UIViewController {
//    MARK:- OUTLETS
    
    @IBOutlet weak var CollectionView: UICollectionView!
    {
        
        didSet{
            CollectionView.layer.backgroundColor=#colorLiteral(red: 0.948040545, green: 0.9531713128, blue: 0.957208097, alpha: 1)
        
        }
    }
    
    //    MARK:- VARIABLE
    
    var ListColumnA01OurMenuImg =   [#imageLiteral(resourceName: "OurMenuA1"),#imageLiteral(resourceName: "OurMenuA2"),#imageLiteral(resourceName: "OurMenuA3"),#imageLiteral(resourceName: "OurMenuA4"),#imageLiteral(resourceName: "OurMenuA5"),#imageLiteral(resourceName: "OurMenuB1"),#imageLiteral(resourceName: "OurMenuB2"),#imageLiteral(resourceName: "OurMenuB3"),#imageLiteral(resourceName: "OurMenuB4"),#imageLiteral(resourceName: "OurMenuB5")]
    
    var ListColumnA01OurMenuLbl = ["BREAKFAST","WRAPS & SANDWICHES","BURGERS","SOUPS & SALADS","PROTEIN SMOOTHIES","PANCAKES & WAFFLES","BOWLS & STIR FRYS","PASTAS WITH PROTEIN","Pizza","KIDS MENU"]
    
    //    MARK:- LIFE_CYCLE
    
    
override func viewDidLoad() {
        super.viewDidLoad()


    SetShow()
    
    
    }
    
//    MARK:- ACTION_BUTTON
    
    
    
    
    
//    MARK:- APIS
    
    
    
//    MARK:- FUNCTIONS
    
    func SetShow(){
        
        CollectionView.delegate=self
        CollectionView.dataSource=self
        CollectionView.register(UINib(nibName: "CollectionViewCell003", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell003")
   
        CollectionView.register(UINib(nibName: "CollectionViewCell02", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell02")
    
    }
    
    
//    MARK:- TABLE_VIEWS
    
    
    
    
}


extension pickViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
        }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 1
        case 1:
            return ListColumnA01OurMenuLbl.count
            
        default:
            print("")
        }
        return 0
    
    
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        switch indexPath.section
        
        {
        case 0:
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell02", for: indexPath) as! CollectionViewCell02
    
    return cell
        case 1 :
        
        
        let cell = CollectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell003", for: indexPath) as! CollectionViewCell003
        
            cell.Collection003Lbl01.text=ListColumnA01OurMenuLbl[indexPath.row]
            cell.Collection003Img.image=ListColumnA01OurMenuImg[indexPath.row]
        
        return cell
        
        default:
            print("")
        }
 
        return UICollectionViewCell()
}

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        switch indexPath.section{
        case 0:
       return CGSize(width: 124, height: 36)
            
            
        case 1:
            let CollectionHight = CollectionView.bounds.height
            let CollectionWidth=CollectionView.bounds.width
            return CGSize(width: CollectionWidth/2-2, height: CollectionHight/2-180)
            
        default :
            print("")
        }
        return CGSize.zero
        
    }
  

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        switch section{
        case 0:
            return 0
            
            
        case 1:
            
            return 0
        
        default :
            print("")
        }
        return 0
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        
        switch section{
        case 0:
            return 0
            
            
        case 1:
            return 1
        
        default :
            print("")
        }
        return 0
    }
    

}


    
    

