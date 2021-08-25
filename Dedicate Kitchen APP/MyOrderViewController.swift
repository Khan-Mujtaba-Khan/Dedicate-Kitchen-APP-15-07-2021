//
//  MyOrderViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 29/07/2021.
//

import UIKit

class MyOrderViewController: UIViewController {

    //MARK:- OUTLETS
    
    @IBOutlet weak var MyOrderOptionBtn: UIButton!
    @IBOutlet weak var MyOrderTopLbl: UILabel!
    @IBOutlet weak var MyOrderBackView: UIView!
    
    @IBOutlet weak var MyOrderStckiew: UIStackView!
    {
        didSet{ MyOrderStckiew.layer.masksToBounds=true
            
            MyOrderStckiew.layer.cornerRadius=8
        }
    }
    
    @IBOutlet weak var MyOrderBagBtn: UIButton!
    
    @IBOutlet weak var MyOrderActiveView: UIView!
    
    {
        didSet{MyOrderActiveView.layer.cornerRadius=8
            MyOrderActiveView.layer.masksToBounds=true
        }
    }
    @IBOutlet weak var MyOrderUpcomingView: UIView!
    @IBOutlet weak var MyOrderHistoryView: UIView!
    
    {
        didSet{ MyOrderHistoryView.layer.cornerRadius=8
            MyOrderHistoryView.layer.masksToBounds=true
        }
    }
    @IBOutlet weak var MyOrderActiveBtn: UIButton!
    {
        didSet{MyOrderActiveBtn.layer.cornerRadius=8
            MyOrderActiveBtn.layer.masksToBounds=true
        }
    }
    @IBOutlet weak var MyOrderUpcomingBtn: UIButton!
   
    @IBOutlet weak var MyOrderHistoryBtn: UIButton!
    {
        didSet{MyOrderHistoryBtn.layer.cornerRadius=8
            MyOrderHistoryBtn.layer.masksToBounds=true
        }
    }
    @IBOutlet weak var MyOrderActiveLbl: UILabel!
    @IBOutlet weak var MyOrderUpcomingLbl: UILabel!
    @IBOutlet weak var MyOrderHistoryLbl: UILabel!
    @IBOutlet weak var MyOrderSortOptionBtn: UIButton!
    @IBOutlet weak var MyOrderSortLbl: UILabel!
    @IBOutlet weak var TableViewMyOrder: UITableView!
    
    
//    MARK:- VARIABLES
    
    
   var ListBreakFastImage = [#imageLiteral(resourceName: "MyOrderImage01"),#imageLiteral(resourceName: "MyOrderImage02"),#imageLiteral(resourceName: "OurMenuA4"),#imageLiteral(resourceName: "MealPreImage05")]
    var ListBreakFasrTitle=["THE PERFECT SET","CLASSIC BREAKFAST SANDWICH","MORNING MUSCLE BURRITO","PANCAKES & WAFFLES"]
    
    
   var ListBowlStriFrysImage = [#imageLiteral(resourceName: "OurMenuB3"),#imageLiteral(resourceName: "MyOrderImage05"),#imageLiteral(resourceName: "OurMenuB5")]
    var ListBowlStriFrysTitle=["TOTAL FLEX BOWL","MEXICAN PUMP BOWL","AMERICAN PUMP BOWL"]
    
    
    
    //    MARK:- LIFE_CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
       

        
        
        ShowSet()
        
    }
    
    //    MARK:- ACTION_BUTTONS
    
    @IBAction func ClickMyOrderActiveBtn(_ sender: UIButton) {
    
        if sender.tag == 1
        {

            
            MyOrderActiveView.backgroundColor = #colorLiteral(red: 0.1194261089, green: 0.2142085433, blue: 0.3265839815, alpha: 1)
            MyOrderActiveLbl.textColor = .white
            MyOrderActiveView.layer.cornerRadius=8
            MyOrderActiveView.layer.masksToBounds=true
        
            MyOrderUpcomingView.backgroundColor=#colorLiteral(red: 0.99598068, green: 0.9961469769, blue: 0.9959587455, alpha: 1)
            MyOrderUpcomingLbl.textColor = #colorLiteral(red: 0.5503849983, green: 0.5854753852, blue: 0.6489293575, alpha: 1)
//            MyOrderUpcomingView.layer.cornerRadius=7
//            MyOrderUpcomingView.layer.masksToBounds=true
            
            MyOrderHistoryView.backgroundColor=#colorLiteral(red: 0.99598068, green: 0.9961469769, blue: 0.9959587455, alpha: 1)
            MyOrderHistoryLbl.textColor = #colorLiteral(red: 0.5503849983, green: 0.5854753852, blue: 0.6489293575, alpha: 1)
            MyOrderHistoryView.layer.cornerRadius=9
            MyOrderHistoryView.layer.masksToBounds=true

            
        
        }
        
        else if sender.tag==2
        
        {
            MyOrderUpcomingView.backgroundColor=#colorLiteral(red: 0.1194261089, green: 0.2142085433, blue: 0.3265839815, alpha: 1)
            MyOrderUpcomingLbl.textColor = .white
            MyOrderUpcomingView.layer.cornerRadius=8
            MyOrderUpcomingView.layer.masksToBounds=true

            
            
            MyOrderActiveView.backgroundColor = #colorLiteral(red: 0.99598068, green: 0.9961469769, blue: 0.9959587455, alpha: 1)
            MyOrderActiveLbl.textColor =  #colorLiteral(red: 0.5503849983, green: 0.5854753852, blue: 0.6489293575, alpha: 1)
            MyOrderActiveView.layer.cornerRadius=9
            MyOrderActiveView.layer.masksToBounds=true

            MyOrderHistoryView.backgroundColor=#colorLiteral(red: 0.99598068, green: 0.9961469769, blue: 0.9959587455, alpha: 1)
            MyOrderHistoryLbl.textColor = #colorLiteral(red: 0.5503849983, green: 0.5854753852, blue: 0.6489293575, alpha: 1)
            MyOrderHistoryView.layer.cornerRadius=9
            MyOrderHistoryView.layer.masksToBounds=true

            
        }
        else if sender.tag==3{
//
            MyOrderHistoryView.backgroundColor=#colorLiteral(red: 0.1194261089, green: 0.2142085433, blue: 0.3265839815, alpha: 1)
            MyOrderHistoryLbl.textColor = .white
            MyOrderHistoryView.layer.cornerRadius=8
            MyOrderHistoryView.layer.masksToBounds=true
            
            
            MyOrderActiveView.backgroundColor = #colorLiteral(red: 0.99598068, green: 0.9961469769, blue: 0.9959587455, alpha: 1)
            MyOrderActiveLbl.textColor =  #colorLiteral(red: 0.5503849983, green: 0.5854753852, blue: 0.6489293575, alpha: 1)
            MyOrderActiveView.layer.cornerRadius=9
            MyOrderActiveView.layer.masksToBounds=true
            
            MyOrderUpcomingView.backgroundColor=#colorLiteral(red: 0.99598068, green: 0.9961469769, blue: 0.9959587455, alpha: 1)
            MyOrderUpcomingLbl.textColor = #colorLiteral(red: 0.5503849983, green: 0.5854753852, blue: 0.6489293575, alpha: 1)
//            MyOrderUpcomingView.layer.cornerRadius=7
//            MyOrderUpcomingView.layer.masksToBounds=true

            
        }
    
    }
  
 
    @IBAction func ClickMyOrderBagBtn(_ sender: UIButton) {
   
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MyBagViewController") as! MyBagViewController
        self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
    
    
    
    //    MARK:- APIS
    
    
    


}
//    MARK:- FUNCTION


extension MyOrderViewController
{
    func ShowSet(){
        TableViewMyOrder.delegate=self
        TableViewMyOrder.dataSource=self
        TableViewMyOrder.register(UINib(nibName: "MyOrder01aTableViewCell", bundle: nil), forCellReuseIdentifier: "MyOrder01aTableViewCell")
        TableViewMyOrder.register(UINib(nibName: "MyOrder01TableViewCell", bundle: nil), forCellReuseIdentifier: "MyOrder01TableViewCell")
        TableViewMyOrder.register(UINib(nibName: "MyOrder02aTableViewCell", bundle: nil), forCellReuseIdentifier: "MyOrder02aTableViewCell")
        TableViewMyOrder.register(UINib(nibName: "MyOrder02TableViewCell", bundle: nil), forCellReuseIdentifier: "MyOrder02TableViewCell")
        
        
    }
    
}


//    MARK:- TABLE_VIEW

extension MyOrderViewController:UITableViewDelegate,UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 4
        case 2:
            return 1
        case 3:
            return 3
        default:
            print("")
        }
   return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            
            let cell=TableViewMyOrder.dequeueReusableCell(withIdentifier: "MyOrder01aTableViewCell") as! MyOrder01aTableViewCell
            return cell
        case 1:
           
            let cell = TableViewMyOrder.dequeueReusableCell(withIdentifier: "MyOrder01TableViewCell") as! MyOrder01TableViewCell
            cell.MyOrder01Img01.image=ListBreakFastImage[indexPath.row]
            cell.MyOrder01LblTop01.text=ListBreakFasrTitle[indexPath.row]
            
            
            return cell
        case 2:
            let cell = TableViewMyOrder.dequeueReusableCell(withIdentifier: "MyOrder02aTableViewCell") as! MyOrder02aTableViewCell
       
            
            return cell
        case 3:
            
            let cell = TableViewMyOrder.dequeueReusableCell(withIdentifier: "MyOrder02TableViewCell")as! MyOrder02TableViewCell
            cell.MyOrder02Img01.image=ListBowlStriFrysImage[indexPath.row]
            cell.MyOrder02LblTop01.text=ListBowlStriFrysTitle[indexPath.row]
            return cell
            
        default:
                    print("")
        }
   return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0:
            return 50
        case 1:
            return 220

        case 2:
            return 50
        case 3:
            return 220
        default:
            print("")
        }
        
        return UITableView.automaticDimension
        
        
    }
    
    
    
    
    
}
                                
                        
