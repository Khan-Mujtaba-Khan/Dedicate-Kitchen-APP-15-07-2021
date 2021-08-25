//
//  MealPreViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 23/07/2021.
//

import UIKit



var ListMealPreImg01 = [#imageLiteral(resourceName: "MealPreImage01"),#imageLiteral(resourceName: "MealPreImage02"),#imageLiteral(resourceName: "MealPreImage03"),#imageLiteral(resourceName: "MealPreImage04")]
var ListMealPreTitleLbl = ["Keto Cheeseburger Bowl","Keto Lasagna","Philly Steak Bowl","Dressed Steak"]

var ListMealPreDescription = ["Ground Bison, cheddar cheese, shredded lettuce, pickle, red onion, & sweet potato","Green Zucchini, Bolognese sauce, Ricotta cheese, shredded Mozzarella.","Shaved Angus beef, pepper/onion mix, mushroom, monterey jack cheese","Bacon wrapped Angus sirloin, seasonal veggies, roasted sweet potato."]
var ListMealPrePriceLbl=["$13.00","$10.00","$13.00","$15.00"]




var ListMealPreImg04 = [#imageLiteral(resourceName: "MyOrderImage02"),#imageLiteral(resourceName: "MealPreImage01"),#imageLiteral(resourceName: "MealPreImage02"),#imageLiteral(resourceName: "MealPreImage03"),#imageLiteral(resourceName: "MealPreImage04")]
var ListMealPreTitleLb4 = ["Orange-Terragon Salmon","Keto Cheeseburger Bowl","Keto Lasagna","Philly Steak Bowl","Dressed Steak"]

var ListMealPreDescription4 = ["Orange and tarragon leaf glazed salmon, seasonal veggies and basmati rice.","Ground Bison, cheddar cheese, shredded lettuce, pickle, red onion, & sweet potato","Green Zucchini, Bolognese sauce, Ricotta cheese, shredded Mozzarella.","Shaved Angus beef, pepper/onion mix, mushroom, monterey jack cheese","Bacon wrapped Angus sirloin, seasonal veggies, roasted sweet potato."]
var ListMealPrePriceLbl4=["$16.00","$13.00","$10.00","$13.00","$15.00"]






class MealPreViewController: UIViewController {

    //      MARK:- OUTLET
  
    @IBOutlet weak var OurMenuBackBtn01: UIButton!
    
    @IBOutlet weak var TableViewMealPre:UITableView!
   
    {
        didSet{
            TableViewMealPre.layer.backgroundColor=#colorLiteral(red: 0.9441192746, green: 0.9492495656, blue: 0.953287065, alpha: 1)
        }
        
    }
    
    
    
            //      MARK:- VARIAVLE

    
    
            //      MARK:- LIFECYCLE
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SetShow()
            
        
        
    }
    
    //      MARK:- ACTION_BUTTON
    
    @IBAction func ClickOurMenuBtn01(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    
    }
    
    
    //      MARK:- APIS




    //      MARK:- FUNCTION
    func SetShow(){
        
        TableViewMealPre.delegate=self
        TableViewMealPre.dataSource=self
       
        TableViewMealPre.register(UINib(nibName: "MealPre01TableViewCell", bundle: nil), forCellReuseIdentifier: "MealPre01TableViewCell")
        
        TableViewMealPre.register(UINib(nibName: "MealPre02TableViewCell", bundle: nil), forCellReuseIdentifier: "MealPre02TableViewCell")
        
        TableViewMealPre.register(UINib(nibName: "MealPre03TableViewCell", bundle: nil), forCellReuseIdentifier: "MealPre03TableViewCell")
        
        TableViewMealPre.register(UINib(nibName: "MealPre04TableViewCell", bundle: nil), forCellReuseIdentifier: "MealPre04TableViewCell")
        
        
    }
    
   
   

}
//      MARK:- TABLEVIEW

extension MealPreViewController:UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        switch section{
        
        
        case 0:
            return ListMealPreImg01.count
        case 1:
            return 1
        case 2:
            return 1
        case 3:
            
            return ListMealPreImg04.count
        default:
            print("")
        
            
        }
        
        return 0
        
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        switch indexPath.section{
        
        
        case 0:
            
            let cell = TableViewMealPre.dequeueReusableCell(withIdentifier: "MealPre01TableViewCell") as! MealPre01TableViewCell
            
            cell.MealPreImg01.image=ListMealPreImg01[indexPath.row]
            cell.MealPreLbl01.text=ListMealPreTitleLbl[indexPath.row]
            cell.MealPreLbl02.text=ListMealPreDescription[indexPath.row]
            cell.MealPreLbl03.text=ListMealPrePriceLbl[indexPath.row]
            
            
            return cell
        case 1:
            let cell = TableViewMealPre.dequeueReusableCell(withIdentifier: "MealPre02TableViewCell") as! MealPre02TableViewCell
            
            
            
            return cell
        case 2:
            
            let cell = TableViewMealPre.dequeueReusableCell(withIdentifier: "MealPre03TableViewCell") as! MealPre03TableViewCell
            
            
            return cell
        case 3:
            
            let cell = TableViewMealPre.dequeueReusableCell(withIdentifier: "MealPre04TableViewCell") as!
            MealPre04TableViewCell
            
            
            cell.MealPre04Image01.image=ListMealPreImg04[indexPath.row]
            
            cell.MealPre04Lbl01.text=ListMealPreTitleLb4[indexPath.row]
            
            cell.MealPre04Lbl02.text=ListMealPreDescription4[indexPath.row]
            
            cell.MealPre04Lbl03.text=ListMealPrePriceLbl4[indexPath.row]
            
            return cell
      
        
        default:
            print("")
        
            
        }
        return UITableViewCell()
        
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        
        switch indexPath.section{
        
        
        case 0:
            return 120
        case 1:
            return 40
        case 2:
            return 220
        case 3:
            return 120
        default:
            print("")
        
            
        }
        
        return UITableView.automaticDimension
        
    }
    
    
    
    
    
    
}


