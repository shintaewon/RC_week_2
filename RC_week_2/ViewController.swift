//
//  ViewController.swift
//  RC_week_2
//
//  Created by 신태원 on 2022/08/13.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var view_1: UIView!
    @IBOutlet weak var view_2: UIView!
    @IBOutlet weak var view_3: UIView!
    
    @IBOutlet weak var view_4: UIView!
    @IBOutlet weak var view_5: UIView!
    @IBOutlet weak var view_6: UIView!
    
    
    @IBOutlet weak var img_bank: UIImageView!
    
    @IBOutlet weak var transferBtn: UIButton!
    
    func sendData(name: String){
        self.accountMoneyLabel.text = name
    }
    var sendedMony = 0
    
    
    
    @IBOutlet weak var accountMoneyLabel: UILabel!
    
    
    @IBOutlet weak var myAccountBtn: UIButton!
    
    @IBAction func transferBtn(_ sender: Any) {
        let transferVC = self.storyboard?.instantiateViewController(identifier: "TransferViewController") as! TransferViewController
        
        transferVC.modalTransitionStyle = .coverVertical
        
        transferVC.modalPresentationStyle = .fullScreen
        
        self.present(transferVC, animated: true, completion: nil)
        
    }
    @IBAction func didTapAction(_ sender: Any) {
        print("성공적")
        
        /*let itemServiceViewController = self.tabBarController?.viewControllers![1] as! ItemServiceViewController
        //Tab 에서 Tab으로 data 보낼때
        
        let itemServiceViewController = self.storyboard?.instantiateViewController(withIdentifier: "ItemServiceViewController") as! ItemServiceViewController
        self.present(itemServiceViewController, animated: true, completion: nil)*/
        //새로운 instance 만들어서 data보낼때
        
        
    }
    var firstLaunch = true

    func isFirstlaunch() {
        if firstLaunch == true{
            showPopup()
            firstLaunch = false
        }
    }
    
    func showPopup() {
        let storyBoard = UIStoryboard.init(name: "PopupViewController", bundle: nil)
        let popupVC = storyBoard.instantiateViewController(identifier: "popupVC")
        popupVC.modalPresentationStyle = .overCurrentContext
        self.present(popupVC, animated: false, completion: nil)
    }
    
    var myMoney = 123456
    
    func makeMoneytoString(_ num: Int) -> String {
        
        var temp = String(num)
        let len = String(num).count
        
        var count = len/3
        
        if len%3==0 {
            count = count - 1
        }
        
        for i in 1...count{
            temp.insert(",", at: temp.index(temp.startIndex, offsetBy: len - i*3))
        }
        temp.append("원")
        
        return temp
        
    }
    
    func shadowPutin(_ someView: UIView!){
        someView.layer.cornerRadius = 10
        someView.layer.shadowColor = UIColor.gray.cgColor
        someView.layer.shadowOffset = CGSize(width: 0, height: 2)
        someView.layer.shadowRadius = 2
        someView.layer.shadowOpacity = 0.2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewdidLoad")
        accountMoneyLabel.text = makeMoneytoString(myMoney)
        myAccountBtn.layer.cornerRadius = 15
        
        img_bank.layer.cornerRadius = 30
        transferBtn.layer.cornerRadius = 15
        shadowPutin(view_1)
        shadowPutin(view_2)
        shadowPutin(view_3)
        shadowPutin(view_4)
        shadowPutin(view_5)
        shadowPutin(view_6)
        
        UserDefaults.standard.set(123456, forKey: "money")
        
       
    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
        isFirstlaunch()
        
        accountMoneyLabel.text = makeMoneytoString(UserDefaults.standard.integer(forKey: "money"))
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
}

