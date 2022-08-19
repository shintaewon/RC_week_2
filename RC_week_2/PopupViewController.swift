//
//  PopupViewController.swift
//  RC_week_2
//
//  Created by 신태원 on 2022/08/13.
//

//
//  PopupViewController.swift
//  kakaoBank_clone
//
//  Created by 신태원 on 2022/08/13.
//

import UIKit

class PopupViewController: UIViewController {
    
    
    @IBAction func closePopupBtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func neverOpenBtn(_ sender: Any) {
        

        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("실행되고있니..")
        
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
