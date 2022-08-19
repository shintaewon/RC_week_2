//
//  TransferViewController.swift
//  RC_week_2
//
//  Created by 신태원 on 2022/08/15.
//

import UIKit

class TransferViewController: UIViewController {

    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    @IBOutlet weak var searchTextfield: UITextField!
    @IBOutlet weak var accountsegcontrol: UISegmentedControl!
    
    
    @IBOutlet weak var accountView: UIView!
    
    
    
    @IBAction func closebtn(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
  
    //segmented control 배경 하얗게
    func fixBackgroundSegmentControl( _ segmentControl: UISegmentedControl){
        if #available(iOS 13.0, *) {
            //just to be sure it is full loaded
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                for i in 0...(segmentControl.numberOfSegments-1)  {
                    let backgroundSegmentView = segmentControl.subviews[i]
                    //it is not enogh changing the background color. It has some kind of shadow layer
                    backgroundSegmentView.isHidden = true
                }
            }
        }
    }
    @IBAction func switchViews(_ sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            firstView.alpha = 0
            secondView.alpha = 1
        }else{
            firstView.alpha = 1
            secondView.alpha = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        firstView.alpha = 0
        secondView.alpha = 1
        searchTextfield.placeholder = "받는사람 이름 또는 계좌번호"
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: searchTextfield.frame.height - 1, width: searchTextfield.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        searchTextfield.borderStyle = UITextField.BorderStyle.none
        searchTextfield.layer.addSublayer(bottomLine)
        
        fixBackgroundSegmentControl(accountsegcontrol)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
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
