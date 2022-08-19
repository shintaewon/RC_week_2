//
//  SendingMoneyViewController.swift
//  RC_week_2
//
//  Created by 신태원 on 2022/08/15.
//

import UIKit

class SendingMoneyViewController: UIViewController {
    var money: String = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var accountLabel: UIView!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var moneyLabel: UILabel!
    
    @IBAction func cancelBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func nextBtn(_ sender: Any) {
    
        reAskPopup()
    }
    
    func makeMoneytoString(_ money: String) -> String {
        
        if(money.count == 0){
            return ""
        }
        else{
            var temp = money
            let len = money.count
            
            var count = len/3
            
            if len%3==0 {
                count = count - 1
            }
            
            for i in 0..<count{
                temp.insert(",", at: temp.index(temp.startIndex, offsetBy: len - (i+1)*3))
            }
            temp.append("원")
            
            return temp
        }
        
    }
    
    func isMoneyEmpty(_ num: Character ){
        
        money.append(num)
        
        nextBtn.backgroundColor = UIColor(displayP3Red: 249/255, green: 222/255, blue: 47/255, alpha: 1)
        
        nextBtn.setTitleColor(UIColor.black, for: .normal)
        
        resultLabel.text = makeMoneytoString(money)
        
    }
    
    @IBAction func num1_btn(_ qsender: Any) {
        isMoneyEmpty("1")
        
        
    }
    
    @IBAction func num2_btn(_ sender: Any) {
        isMoneyEmpty("2")
    }
    
    @IBAction func num3_btn(_ sender: Any) {
        isMoneyEmpty("3")
    }
    
    @IBAction func num4_btn(_ sender: Any) {
        isMoneyEmpty("4")
    }
    
    @IBAction func num5_btn(_ sender: Any) {
        isMoneyEmpty("5")
    }
    
    @IBAction func num6_btn(_ sender: Any) {
        isMoneyEmpty("6")
    }
    
    @IBAction func num7_btn(_ sender: Any) {
        isMoneyEmpty("7")
    }
    
    @IBAction func num8_btn(_ sender: Any) {
        isMoneyEmpty("8")
    }
    
    @IBAction func num9_btn(_ sender: Any) {
        isMoneyEmpty("9")
    }
    
    @IBAction func num00_btn(_ sender: Any) {
        if money.count != 0 {
            isMoneyEmpty("0")
            isMoneyEmpty("0")
            //isMoneyEmpty("0")
        }
    }
    
    @IBAction func num0_btn(_ sender: Any) {
        if money.count != 0 {
            isMoneyEmpty("0")
        }
    }
    
    
    @IBAction func backSpaceBtn(_ sender: Any) {
        if money.count > 0{
            if money.count == 1{
                money.removeAll()
                nextBtn.backgroundColor = UIColor(displayP3Red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
                
                nextBtn.setTitleColor(UIColor(displayP3Red: 185/255, green: 185/255, blue: 185/255, alpha: 1), for: .normal)
            }
            else{
                money.removeLast()
            }
            
            resultLabel.text = makeMoneytoString(money)
        }
    }
    @objc func appMovedToForeground() {
        print("App moved to foreground")
        showPopup()
    }
    
    func showPopup() {
        let storyBoard = UIStoryboard.init(name: "AskContinuePopupViewController", bundle: nil)
        let popupVC = storyBoard.instantiateViewController(identifier: "AskContinuePopupViewController")
        popupVC.modalPresentationStyle = .overCurrentContext
        self.present(popupVC, animated: false, completion: nil)
    }
    
    func reAskPopup() {
        /*let storyBoard = UIStoryboard.init(name: "ReaskViewController", bundle: nil)
        let reaskpopupVC = storyBoard.instantiateViewController(identifier: "ReaskViewController")
        reaskpopupVC.modalPresentationStyle = .overCurrentContext*/
        
        
        let reAskVC = self.storyboard?.instantiateViewController(withIdentifier: "ReaskViewController") as! ReaskViewController
        
        reAskVC.money = makeMoneytoString(money)
        reAskVC.modalTransitionStyle = .flipHorizontal
        reAskVC.modalPresentationStyle = .overCurrentContext
        self.present(reAskVC, animated: true, completion: nil)
        
    }
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(appMovedToForeground), name: UIApplication.didBecomeActiveNotification, object: nil)
        
        accountLabel.layer.cornerRadius = 10
        
        moneyLabel.text = makeMoneytoString(UserDefaults.standard.integer(forKey: "money"))
    }
    
    

    }


