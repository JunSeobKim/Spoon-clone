//
//  ViewController.swift
//  Spoon-clone
//
//  Created by 김준섭 on 2022/05/15.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {


    @IBOutlet weak var carousel: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var storyImage01: UIImageView!
    @IBOutlet weak var storyImage02: UIImageView!
    @IBOutlet weak var storyImage03: UIImageView!
    @IBOutlet weak var storyImage04: UIImageView!
    @IBOutlet weak var storyImage05: UIImageView!
    @IBOutlet weak var storyImage06: UIImageView!
     
    @IBOutlet weak var image01: UIImageView!
    @IBOutlet weak var image02: UIImageView!
    @IBOutlet weak var image03: UIImageView!
    @IBOutlet weak var image04: UIImageView!
    
    @IBOutlet weak var bottomNavCircleBtn: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = 4
        pageControl.currentPageIndicatorTintColor = UIColor.orange
        
        imageGradient(storyImage01)
        imageGradient(storyImage02)
        imageGradient(storyImage03)
        imageGradient(storyImage04)
        imageGradient(storyImage05)
        imageGradient(storyImage06)
        
        borderRadius(image01)
        borderRadius(image02)
        borderRadius(image03)
        borderRadius(image04)
        
        bottomNavCircleBtn.layer.cornerRadius = bottomNavCircleBtn.frame.height / 2
        bottomNavCircleBtn.layer.borderWidth = 6
        bottomNavCircleBtn.layer.borderColor = UIColor.systemBackground.cgColor
    }
    
    // set border color gradient
    func imageGradient(_ img: UIImageView) {
        let gradient = CAGradientLayer()
            gradient.frame =  CGRect(origin: CGPoint.zero, size: img.frame.size)
            gradient.colors = [UIColor.systemPink.cgColor, UIColor.yellow.cgColor]
        
        let shape = CAShapeLayer()
            shape.lineWidth = 3
            shape.path = UIBezierPath(roundedRect: img.bounds.insetBy(dx: 1, dy: 1), cornerRadius: img.frame.width * 0.5).cgPath
            shape.strokeColor = UIColor.black.cgColor
            shape.fillColor = UIColor.clear.cgColor
            gradient.mask = shape
        
        img.layer.cornerRadius = img.frame.height / 2
        img.layer.borderWidth = 1
        img.layer.addSublayer(gradient)
    }
    
    // set border radius
    func borderRadius(_ img: UIImageView) {
        img.layer.cornerRadius = 10
    }

}

