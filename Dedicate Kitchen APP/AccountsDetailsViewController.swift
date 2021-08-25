//
//  AccountsDetailsViewController.swift
//  Dedicate Kitchen APP
//
//  Created by MUJTABA KHAN on 03/08/2021.
//

import UIKit

class AccountsDetailsViewController: UIViewController
{

//MARK:- OUTLETS

@IBOutlet weak var AccountsDetailsMainBackView: UIView!

    @IBOutlet weak var AccountsDetailsSubTitle: UILabel!
    
    @IBOutlet weak var AccountsDetailsMainBackView01: UIView!
    @IBOutlet weak var AccountsDetailsTitle: UILabel!
    
    @IBOutlet weak var TableViewAccountsDetails: UITableView!
    
    

//MARK:- VARIABLES

    
    var ListAccountDetailGeneralImages = [#imageLiteral(resourceName: "AccountDetailsGeneral01Image"),#imageLiteral(resourceName: "AccountDetailsGeneral07Image"),#imageLiteral(resourceName: "AccountDetailsGeneral05Image"),#imageLiteral(resourceName: "AccountDetailsGeneral02Image"),#imageLiteral(resourceName: "AccountDetailsGeneral03Image")]

    var ListAccountDetailGeneralTitle = ["Account information","Password","Payment Methods","Delivery Locations","Invite your friends"]
    var ListAccountDetailGeneralSubTitle = ["Change your Account information","Change your Password","Add your Credit & Debit cards","Change your Delivery Locations","Get $5 for each invitation!"]
    
    
    var ListAccountDetailNotificationImages = [#imageLiteral(resourceName: "AccountDetailsGeneralnotification"),#imageLiteral(resourceName: "AccountDetailsGeneralnotification")]
    var ListAccountDetailNotificationTitle = ["Notifications","Promotional Notifications"]
    var ListAccountDetailNotificationSubTitle = ["You will receive daily updates","Get notified when promotions"]
    
    
    var ListAccountDetailMoreImages = [#imageLiteral(resourceName: "AccountDetails-rate-full"),#imageLiteral(resourceName: "AccountDetailsGeneral06Image")]
    var ListAccountDetailMoreTitle = ["Rate Us","FAQ"]
    var ListAccountDetailMoreSubTitle = ["You will receive daily updates","Frequently Asked Questions"]

//MARK:- LIFE_CYCLE

override func viewDidLoad() {
        super.viewDidLoad()

    SetShow()
    
    }
    
    
    //MARK:- ACTION_BUTTON

    
    
    
    
    //MARK:- API

    
    

  
}
//MARK:- FUNCTION

extension AccountsDetailsViewController{
    
    func SetShow()  {
        
        TableViewAccountsDetails.delegate=self
        TableViewAccountsDetails.dataSource=self
        
        TableViewAccountsDetails.register(UINib(nibName: "AccountDetailsGeneralTableViewCell", bundle: nil), forCellReuseIdentifier: "AccountDetailsGeneralTableViewCell")
        
        TableViewAccountsDetails.register(UINib(nibName: "AccountDetailsGeneral01TableViewCell", bundle: nil), forCellReuseIdentifier: "AccountDetailsGeneral01TableViewCell")
        
        
        TableViewAccountsDetails.register(UINib(nibName: "AccountDetailsNotificationTableViewCell", bundle: nil), forCellReuseIdentifier: "AccountDetailsNotificationTableViewCell")
        
        TableViewAccountsDetails.register(UINib(nibName: "AccountDetailsNotification01TableViewCell", bundle: nil), forCellReuseIdentifier: "AccountDetailsNotification01TableViewCell")
        
        TableViewAccountsDetails.register(UINib(nibName: "AccountDetailsMoreTableViewCell", bundle: nil), forCellReuseIdentifier: "AccountDetailsMoreTableViewCell")
        
        TableViewAccountsDetails.register(UINib(nibName: "AccountDetailsMore01TableViewCell", bundle: nil), forCellReuseIdentifier: "AccountDetailsMore01TableViewCell")
        
}
    
}



//MARK:- TABLE_VIEW

extension AccountsDetailsViewController:UITableViewDelegate,UITableViewDataSource{
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 6
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 1
            
        case 1:
            return 5
            
        case 2:
            return 1
            
        case 3:
            return 2
            
        case 4:
            return 1
            
        case 5:
            return 2
        
            
            
        default:
            print("")
        }
        return 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            
            let cell = TableViewAccountsDetails.dequeueReusableCell(withIdentifier: "AccountDetailsGeneralTableViewCell") as! AccountDetailsGeneralTableViewCell
            return cell
            
        case 1:
            
           
            
            
            let cell = TableViewAccountsDetails.dequeueReusableCell(withIdentifier: "AccountDetailsGeneral01TableViewCell") as! AccountDetailsGeneral01TableViewCell
            
            cell.AccountDetailsGeneral01Image.image=ListAccountDetailGeneralImages[indexPath.row]
            
            cell.AccountDetailsGeneral01Title.text=ListAccountDetailGeneralTitle[indexPath.row]
            cell.AccountDetailsGeneral01SubTitle.text=ListAccountDetailGeneralSubTitle[indexPath.row]
            
            
            switch indexPath.row {
            
            case 0:
                cell.AccountInformationBtn1 = { let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "AccountInformationViewController") as! AccountInformationViewController
                    self.navigationController?.pushViewController(vc, animated: true)
                    
                    
                }
            case 1:
                    cell.AccountInformationBtn2 = { let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PasswordViewController") as! PasswordViewController
                        
                        self.navigationController?.pushViewController(vc, animated: true)}

                
                    
                    case 2 :
                    
                        cell.AccountInformationBtn3 = {
                            
                            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PaymentMethodsViewController") as! PaymentMethodsViewController
                            
                            self.navigationController?.pushViewController(vc, animated: true)
                            }
                
                
            case 3:
                
                
                cell.AccountInformationBtn4 = {
                    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "LocationViewController") as! LocationViewController
                    self.navigationController?.pushViewController(vc, animated: true)
                }
                
            case 4:
                
                cell.AccountInformationBtn5 = {
                    
                    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ReferAndEarnViewController")as! ReferAndEarnViewController
                    
                    self.navigationController?.pushViewController(vc, animated: true)
                }
                        
                        
            default:
                print("")
            
            }
//            cell.AccountInformationBtn1 = { let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "AccountInformationViewController") as! AccountInformationViewController
//
//                self.navigationController?.pushViewController(vc, animated:true)
//
//            }
//
//                cell.AccountInformationBtn2={ let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "PasswordViewController") as! PasswordViewController
//
//                    self.navigationController?.pushViewController(vc, animated: true)}
//
//
            
            
            
            
            
            
            
            
            
            
//            switch indexPath.row {
            
            
            
//                case 0:
//
//
//
//
//
//                case 1:
//
//
//
//                case 2:
//                            break
//                case 3:
//                            break
//
//                case 4:
//            break
//
//                }
//
//
//
//                default:
//                    print("")
//                }
//
//
            
            
            return cell
            
        case 2:
            
            let cell = TableViewAccountsDetails.dequeueReusableCell(withIdentifier: "AccountDetailsNotificationTableViewCell") as! AccountDetailsNotificationTableViewCell
            
            
            return cell
            
        case 3:
            let cell = TableViewAccountsDetails.dequeueReusableCell(withIdentifier: "AccountDetailsNotification01TableViewCell") as! AccountDetailsNotification01TableViewCell
            
            cell.AccountDetailsNotification01Image.image=ListAccountDetailNotificationImages[indexPath.row]
            cell.AccountDetailsNotification01Title.text=ListAccountDetailNotificationTitle[indexPath.row]
            cell.AccountDetailsNotification01SubTitle.text=ListAccountDetailNotificationSubTitle[indexPath.row]
            
            return cell
            
           
            
        case 4:
            
            let cell = TableViewAccountsDetails.dequeueReusableCell(withIdentifier: "AccountDetailsMoreTableViewCell") as! AccountDetailsMoreTableViewCell
            
            return cell
            
            
        case 5:
            
            let cell = TableViewAccountsDetails.dequeueReusableCell(withIdentifier: "AccountDetailsMore01TableViewCell") as! AccountDetailsMore01TableViewCell
            
            cell.AccountDetailsMore01Image.image=ListAccountDetailMoreImages[indexPath.row]
            cell.AccountDetailsMore01Title.text=ListAccountDetailMoreTitle[indexPath.row]
            cell.AccountDetailsMore01SubTitle.text=ListAccountDetailMoreSubTitle[indexPath.row]
            
            
            return cell
            
            
            
        default:
            print("")
        }
   return UITableViewCell()
    }
    
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0:
            return 40
            
        case 1:
            return 100
            
        case 2:
            return 40
            
        case 3:
            return 80
            
        case 4:
            return 40
            
        case 5:
            return 80
        
            
            
        default:
            print("")
        }
        
        return UITableView.automaticDimension
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        switch indexPath.section {
        case 0:
            break


        case 1:
            switch indexPath.row {
            case 0:
                print("0")
            case 1:
                print("1")

            default:
                print("")
            }
        case 2: break


        case 3: break


        case 4: break


        case 5: break




        default:
            print("")
        }



    }
//
//
//
//
//
    
    
}
