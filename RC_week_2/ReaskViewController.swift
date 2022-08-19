//
//  ReaskViewController.swift
//  RC_week_2
//
//  Created by 신태원 on 2022/08/16.
//

import UIKit

class ReaskViewController: UIViewController {

    @IBOutlet weak var moneyLabel: UILabel!
    
    @IBAction func closeBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func continueBtn(_ sender: Any) {
        let completeVC = self.storyboard?.instantiateViewController(identifier: "CompleteViewController") as! CompleteViewController
        
        completeVC.modalTransitionStyle = .coverVertical
        
        completeVC.modalPresentationStyle = .fullScreen
        completeVC.money = money
        self.present(completeVC, animated: true, completion: nil)
    }
    var money : String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moneyLabel.text = money
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("나타남")
      
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
