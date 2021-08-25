//
//  PickUpViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 18/07/2021.
//

import UIKit

class PickUpViewController: UIViewController {
    //MARK:- OUTLETS
    @IBOutlet weak var OurMenuLbl01:UILabel!
    
    
    @IBOutlet weak var OurMenuLbl02:UILabel!
    
    @IBOutlet weak var OurMenuChangeBackBtn01:UIButton!
    @IBOutlet weak var OurMenuImg01:UIImageView!
    @IBOutlet weak var OurMenuLbl03:UILabel!
    @IBOutlet weak var OurMenuLbl04:UILabel!
    
    @IBOutlet weak var CollectionViewOurMenu:UICollectionView!
//    {
//        didSet{CollectionViewOurMenu.layer.backgroundColor=#colorLiteral(red: 0.9598042369, green: 0.9649369121, blue: 0.9732742906, alpha: 1)
//            
//        }
//        
//    }
    
    //MARK:- VARIABLES
    
    var ListColumnA01OurMenuImg =  [#imageLiteral(resourceName: "OurMenuA1"),#imageLiteral(resourceName: "OurMenuB1"),#imageLiteral(resourceName: "OurMenuA2"),#imageLiteral(resourceName: "OurMenuB2"),#imageLiteral(resourceName: "OurMenuA3"),#imageLiteral(resourceName: "OurMenuB3"),#imageLiteral(resourceName: "OurMenuA4"),#imageLiteral(resourceName: "OurMenuB4"),#imageLiteral(resourceName: "OurMenuA5"),#imageLiteral(resourceName: "OurMenuB5"),#imageLiteral(resourceName: "OurMenuA1"),#imageLiteral(resourceName: "OurMenuB1"),#imageLiteral(resourceName: "OurMenuA2"),#imageLiteral(resourceName: "OurMenuB2"),#imageLiteral(resourceName: "OurMenuA3"),#imageLiteral(resourceName: "OurMenuB3"),#imageLiteral(resourceName: "OurMenuA4"),#imageLiteral(resourceName: "OurMenuB4"),#imageLiteral(resourceName: "OurMenuA5"),#imageLiteral(resourceName: "OurMenuB5")]
    
    var ListColumnA01OurMenuLbl = ["BREAKFAST","PANCAKES & WAFFLES","WRAPS & SANDWICHES","BOWLS & STIR FRYS","BURGERS","PASTAS WITH PROTEIN","SOUPS & SALADS","Pizza","PROTEIN SMOOTHIES","KIDS MENU","BREAKFAST","PANCAKES & WAFFLES","WRAPS & SANDWICHES","BOWLS & STIR FRYS","BURGERS","PASTAS WITH PROTEIN","SOUPS & SALADS","Pizza","PROTEIN SMOOTHIES","KIDS MENU"]
    
    
//    var ListColumnB02OurMenuImg = [#imageLiteral(resourceName: "OurMenuB1"),#imageLiteral(resourceName: "OurMenuB2"),#imageLiteral(resourceName: "OurMenuB3"),#imageLiteral(resourceName: "OurMenuB4"),#imageLiteral(resourceName: "OurMenuB5")]
//
//    var ListColumnB01OurMenuLbl = ["PANCAKES & WAFFLES","BOWLS & STIR FRYS","PASTAS WITH PROTEIN","Pizza","KIDS MENU"]
    
    
    //MARK:- LIFE_CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
SetShow()
   
    
    
    }
    //MARK:- ACTION_BUTTON
    
    @IBAction func ChangeBackBtn(_ sender:UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    
    //MARK:- APIS
    
    
   
    
    
  

}

//MARK:- FUNCTION
extension PickUpViewController {
   
    func SetShow(){
        
        CollectionViewOurMenu.delegate=self
        CollectionViewOurMenu.dataSource=self
        CollectionViewOurMenu.register(UINib(nibName: "PickUpCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PickUpCollectionViewCell")
        
        CollectionViewOurMenu.register(UINib(nibName: "PickUp02CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PickUp02CollectionViewCell")
    }
    
}



  //MARK:- COLLECTION_VIEW

extension PickUpViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch section{
        
        case 0:
        
            return 1
            case 1:
                return ListColumnA01OurMenuImg.count
        default :
            
            print("")
        }
        
        return 0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section
        {
        
         case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PickUpCollectionViewCell", for: indexPath)as! PickUpCollectionViewCell
             return cell
       
        case 1:

            let cell = CollectionViewOurMenu.dequeueReusableCell(withReuseIdentifier: "PickUp02CollectionViewCell", for: indexPath) as! PickUp02CollectionViewCell
            cell.Img.image=ListColumnA01OurMenuImg[indexPath.row]
            cell.Lbl.text=ListColumnA01OurMenuLbl[indexPath.row]
            return cell
       default:
            print("")
            }
            return UICollectionViewCell()
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        switch indexPath.section
        {
        case 0:

            let CollectionWidth = CollectionViewOurMenu.bounds.width
            
            let CollectionHight = CollectionViewOurMenu.bounds.height
            
            return CGSize(width: CollectionWidth/1, height: 100
                        
            )
            
        case 1:
            let CollectionWidth = CollectionViewOurMenu.bounds.width
            let CollEctionHight = CollectionViewOurMenu.frame.height
           
            return CGSize(width: CollectionViewOurMenu.frame.width / 2-1, height: CollectionViewOurMenu.frame.height/3.5-5)
            
            
        
        default:
            
                print("")
            
        
        }
        
        return CGSize.zero
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        switch section{

        case 0 :


            return 1

        case 1 :


            return 10

        default :

            print("")

        }

        return 0

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        switch section{

        case 0 :


            return 1

        case 1 :


            return 2


        default :

            print("")

        }

        return 0
    }
    
}



