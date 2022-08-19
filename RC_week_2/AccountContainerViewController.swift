//
//  AccountContainerViewController.swift
//  RC_week_2
//
//  Created by 신태원 on 2022/08/18.
//

import UIKit

class AccountContainerViewController: UIViewController {

    
    @IBOutlet weak var accountView: UIView!
    
    @IBOutlet weak var numberInputLabel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        
        accountView.addGestureRecognizer(tapGesture)
        
        numberInputLabel.layer.cornerRadius = 10
        numberInputLabel.layer.shadowColor = UIColor.gray.cgColor
        numberInputLabel.layer.shadowOffset = CGSize(width: 0, height: 2)
        numberInputLabel.layer.shadowRadius = 2
        numberInputLabel.layer.shadowOpacity = 0.2
    }
    
    @objc func handleTap(sender: UITapGestureRecognizer){
        let SendingMoneyVC = self.storyboard?.instantiateViewController(identifier: "SendingMoneyViewController") as! SendingMoneyViewController
        
        SendingMoneyVC.modalTransitionStyle = .coverVertical
        
        SendingMoneyVC.modalPresentationStyle = .fullScreen
        
        self.present(SendingMoneyVC, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
