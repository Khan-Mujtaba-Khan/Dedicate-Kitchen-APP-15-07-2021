//
//  MyBagViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 30/07/2021.
//

import UIKit

class MyBagViewController: UIViewController {

    
//    MARK:- OUTLETS

    @IBOutlet weak var MybagMainBackView: UIView!
    
    @IBOutlet weak var MyBagBackBtn: UIButton!
    
    @IBOutlet weak var MyBackTitleLbl: UILabel!
    
    
    @IBOutlet weak var TableViewMyBag: UITableView!
    
    //    MARK:- VARIABLES
    var ListBreakFastImage = [#imageLiteral(resourceName: "MyOrderImage01"),#imageLiteral(resourceName: "MyOrderImage02"),#imageLiteral(resourceName: "OurMenuA4"),#imageLiteral(resourceName: "MealPreImage05")]
     var ListBreakFastTitle=["THE PERFECT SET","CLASSIC BREAKFAST SANDWICH","MORNING MUSCLE BURRITO","PANCAKES & WAFFLES"]
     var ListBreakFastPrice = ["$30","$30.75","$40","$50.99"]
    
    
    //    MARK:- LIFE_CYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ShowSet()
       
    }
    //    MARK:- ACTION_BUTTON
    
    @IBAction func ClickMyBagBackBtn(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    //    MARK:- APIS

    
    
    
}
extension MyBagViewController
{
    func ShowSet(){
        TableViewMyBag.delegate=self
        TableViewMyBag.dataSource=self
        TableViewMyBag.register(UINib(nibName: "MyBag01TableViewCell", bundle: nil), forCellReuseIdentifier: "MyBag01TableViewCell")
        TableViewMyBag.register(UINib(nibName: "MyBag02TableViewCell", bundle: nil), forCellReuseIdentifier: "MyBag02TableViewCell")
       
        
        
    }
    
}


//    MARK:- TABLE_VIEW

extension MyBagViewController:UITableViewDelegate,UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3
        case 1:
            return 1
        
        default:
            print("")
        }
   return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
       
        case 0:
           
            let cell = TableViewMyBag.dequeueReusableCell(withIdentifier: "MyBag01TableViewCell") as! MyBag01TableViewCell
            cell.MyBagImage01.image=ListBreakFastImage[indexPath.row]
            cell.MybagTitleLbl.text=ListBreakFastTitle[indexPath.row]
            cell.MybagPriceLbl.text=ListBreakFastPrice[indexPath.row]
            
            return cell
        case 1:
            
            let cell = TableViewMyBag.dequeueReusableCell(withIdentifier: "MyBag02TableViewCell") as! MyBag02TableViewCell
            
            cell.OnClickContinue = { let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SelectAdressViewController") as! SelectAdressViewController
                
                self.navigationController?.pushViewController(vc, animated: true)
                
            }
                
                
            
            
//            cell.onClickContinue = {
//                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SelectAdressViewController") as! SelectAdressViewController
//
//                self.navigationController?.pushViewController(vc, animated: true)
                
            
            
            return cell
     
            
        default:
                    print("")
        }
   return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0:
            return 120
        case 1:
            return 300
        default:
            print("")
        }
        
        return UITableView.automaticDimension
        
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        switch indexPath.section {
        
        case 1:
            
           print("")
            
        default:
            print("")
        }
        
        
    }
    
    
}
