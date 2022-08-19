//
//  ContainerViewController.swift
//  RC_week_2
//
//  Created by 신태원 on 2022/08/18.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet weak var frinedLabel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frinedLabel.layer.cornerRadius = 10
        frinedLabel.layer.shadowColor = UIColor.gray.cgColor
        frinedLabel.layer.shadowOffset = CGSize(width: 0, height: 2)
        frinedLabel.layer.shadowRadius = 2
        frinedLabel.layer.shadowOpacity = 0.2
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
