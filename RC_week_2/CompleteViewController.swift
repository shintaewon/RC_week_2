//
//  CompleteViewController.swift
//  RC_week_2
//
//  Created by 신태원 on 2022/08/17.
//

import UIKit

class CompleteViewController: UIViewController {
    
    var money : String? = ""
    
    
    @IBOutlet weak var sendedMoneyLabel: UILabel!
    @IBOutlet weak var memoBtn: UIButton!
    @IBOutlet weak var moreLabel: UIView!
    func stringToIntMoney(_ money: String) -> Int{
        
        var int_money = money.replacingOccurrences(of: ",", with: "")
        
        int_money = int_money.replacingOccurrences(of: "원", with: "")
        
        return Int(int_money) ?? 0
        
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
    

    @IBAction func completeBtn(_ sender: Any) {
        
        /*guard let mainVC = storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController else{
            return
        }
        mainVC.myMoney = mainVC.myMoney - stringToIntMoney(money!)
        mainVC.firstLaunch = false*/
        
        
        self.view.window?.rootViewController?.dismiss(animated: false, completion: nil)
        
      
        let temp = UserDefaults.standard.integer(forKey: "money")
        
        UserDefaults.standard.set(temp-stringToIntMoney(money ?? "no money"), forKey: "money")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        moreLabel.layer.cornerRadius = 10
        memoBtn.layer.cornerRadius = 15
        sendedMoneyLabel.text = money
        // Do any additional setup after loading the view.
    }
    
    

}
