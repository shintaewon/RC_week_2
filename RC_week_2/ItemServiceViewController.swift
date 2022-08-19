//
//  ItemServiceViewController.swift
//  RC_week_2
//
//  Created by 신태원 on 2022/08/15.
//

import UIKit

var images = ["01.jpeg", "02.jpeg", "03.jpeg", "04.jpeg"]

class ItemServiceViewController: UIViewController {

    
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBAction func pageChanged(_ sender: Any) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.layer.cornerRadius = 10
        pageControl.numberOfPages = images.count
        
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.lightGray
        
        pageControl.currentPageIndicatorTintColor = UIColor.black
        
        imgView.image = UIImage(named: images[0])
        
        yellowView.layer.cornerRadius = 10
        greenView.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    

}
