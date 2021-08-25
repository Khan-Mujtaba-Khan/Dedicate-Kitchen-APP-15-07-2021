//
//  ProductPageViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 27/07/2021.
//

import UIKit

class ProductPageViewController: UIViewController {

//    MARK:- OUTLETS
    
    
    
    @IBOutlet weak var ProductPageImage01: UIImageView!
    @IBOutlet weak var ProductPageBackBtn01: UIButton!
    @IBOutlet weak var TableViewProductPage: UITableView!
    {
        
        didSet{ TableViewProductPage.layer.cornerRadius = 25
            TableViewProductPage.layer.masksToBounds=true
            
        }
        
        
        
    }
    
    
    //    MARK:- VARIABLE
    

    
    //    MARK:- LIFE_CYCLE

    override func viewDidLoad() {
        super.viewDidLoad()

        setshow()
        
        
    }
    

    //    MARK:- ACTION_BUTTNS
    
    @IBAction func ProductPage01BackBtn(_ sender: Any) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    //    MARK:- APIS
   
    
    
}
//    MARK:- FUNCTIONS

extension ProductPageViewController{
    
    func setshow(){
        
        TableViewProductPage.delegate=self
        TableViewProductPage.dataSource=self
       
        TableViewProductPage.register(UINib(nibName: "ProductPage01TableViewCell", bundle: nil), forCellReuseIdentifier: "ProductPage01TableViewCell")
        
        TableViewProductPage.register(UINib(nibName: "ProductPage02TableViewCell", bundle: nil), forCellReuseIdentifier: "ProductPage02TableViewCell")
        
        TableViewProductPage.register(UINib(nibName: "ProductPage03TableViewCell", bundle: nil), forCellReuseIdentifier: "ProductPage03TableViewCell")
        
        TableViewProductPage.register(UINib(nibName: "ProductPage04TableViewCell", bundle: nil), forCellReuseIdentifier: "ProductPage04TableViewCell")
        
        TableViewProductPage.register(UINib(nibName: "ProductPage05TableViewCell", bundle: nil), forCellReuseIdentifier: "ProductPage05TableViewCell")
        
    }
    
}



//    MARK:- TABLE_VIEW


extension ProductPageViewController: UITableViewDelegate,UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 5
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section{
        
        case 0:
        
            return 1
            
        case 1:
            return 1
        case 2:
            return 1
        case 3:
            return 1
        case 4:
            return 1
        default :
            print("")
            
            
        
        
        
        }
        return 0
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.section{
        
        case 0:
            
            let cell = TableViewProductPage.dequeueReusableCell(withIdentifier: "ProductPage01TableViewCell") as! ProductPage01TableViewCell
        
            return cell
            
        case 1:
            let  cell = TableViewProductPage.dequeueReusableCell(withIdentifier: "ProductPage02TableViewCell") as! ProductPage02TableViewCell
            
            
            return cell
        case 2:
            let cell = TableViewProductPage.dequeueReusableCell(withIdentifier: "ProductPage03TableViewCell") as! ProductPage03TableViewCell
            
            return cell
            
        case 3:
            
            let cell = TableViewProductPage.dequeueReusableCell(withIdentifier: "ProductPage04TableViewCell") as! ProductPage04TableViewCell
            return cell
        case 4:
            
            let cell = TableViewProductPage.dequeueReusableCell(withIdentifier: "ProductPage05TableViewCell") as! ProductPage05TableViewCell
            return cell
        default :
            print("")
        
    }
        return UITableViewCell()
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        switch indexPath.section{
        
        case 0:
        
            return 170
            
        case 1:
            return 380
        case 2:
            return 70
        case 3:
            return 110
        case 4:
            return 80
        default :
            print("")
            
            
        
        
        
        }
        return UITableView.automaticDimension
    
    
    }
    
    
    
        
        
        
    
}


