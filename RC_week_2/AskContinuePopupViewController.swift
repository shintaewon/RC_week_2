//
//  AskContinuePopupViewController.swift
//  RC_week_2
//
//  Created by 신태원 on 2022/08/16.
//

import UIKit

class AskContinuePopupViewController: UIViewController {

    @IBOutlet weak var continueBtn_: UIButton!
    @IBOutlet weak var cancelBtn_: UIButton!
    @IBOutlet weak var alertView: UIView!
    @IBAction func cancelBtn(_ sender: Any) {
        self.view.window?.rootViewController?.dismiss(animated: false, completion: nil)
    }
    
    
    @IBAction func continueBtn(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alertView.layer.cornerRadius = 15
        alertView.layer.shadowColor = UIColor.gray.cgColor
        alertView.layer.shadowOffset = CGSize(width: 0, height: 2)
        alertView.layer.shadowRadius = 2
        alertView.layer.shadowOpacity = 0.2
        
        continueBtn_.layer.cornerRadius = 15
        continueBtn_.layer.maskedCorners = [.layerMaxXMaxYCorner]
        
        cancelBtn_.layer.cornerRadius = 15
        cancelBtn_.layer.maskedCorners = [.layerMinXMaxYCorner]
        // Do any additional setup after loading the view.
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
