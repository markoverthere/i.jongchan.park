//
//  BeerDetailViewController.swift
//  EndlessBeerWorld
//
//  Created by 박종찬 on 2017. 7. 19..
//  Copyright © 2017년 박종찬. All rights reserved.
//

import UIKit
import SDWebImage
import Hero

class BeerDetailViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var beerImageView: UIImageView!
    @IBOutlet weak var abvLabel: UILabel!
    @IBOutlet weak var ibuLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var beerData: Beer!
    private var viewsForAnimation: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.scrollView.delegate = self
//        self.isHeroEnabled = true
        
        self.titleLabel.text = beerData.name
        self.titleLabel.heroID = "beerNameLabel" + self.beerData.name
        self.beerImageView.setShowActivityIndicator(true)
        self.beerImageView.setIndicatorStyle(UIActivityIndicatorViewStyle.white)
        self.beerImageView.sd_setImage(with: URL.init(string: beerData.imageUrlString)!,
                                       placeholderImage: UIImage.init(named: "placeholder"))
        self.beerImageView.heroID = "beerImage" + self.beerData.name
        self.abvLabel.text = "ALCOHOL \(beerData.abv)%"
        self.abvLabel.heroID = "abvLabel" + self.beerData.name
        self.ibuLabel.text = "BITTERNESS \(beerData.ibu)"
        self.ibuLabel.heroID = "ibuLabel" + self.beerData.name
        self.descriptionLabel.text = beerData.beerDescription
//        self.descriptionLabel.heroID = "beerDesc" + beerData.name
        self.view.heroID = "bg" + self.beerData.name
        //애니메이션을 위한 어레이
//        self.viewsForAnimation.append(self.beerImageView)
//        self.viewsForAnimation.append(self.descriptionLabel)
//        self.viewsForAnimation.append(self.abvLabel)
//        self.viewsForAnimation.append(self.ibuLabel)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func animateLabels() {
        //순차적 애니메이션
        let distanceX: CGFloat = self.view.frame.size.width
        var differentiator: CGFloat = 1.0
        
        for viewForAnimation in viewsForAnimation {
            let translationX = distanceX + (10.0 * differentiator)
            let affineTransform = CGAffineTransform.init(translationX: translationX, y: 0)
            viewForAnimation.transform = affineTransform
            differentiator += 1.0
        }
        
        var timeDifferentiator: Double = 1.0
        
        for viewForAnimation in viewsForAnimation {
            UIView.animate(withDuration: 2.0,
                           delay: 0.1 * timeDifferentiator,
                           usingSpringWithDamping: 0.5,
                           initialSpringVelocity: 0,
                           options: UIViewAnimationOptions.curveEaseIn,
                           animations: {
                            viewForAnimation.transform = CGAffineTransform.init(translationX: 0, y: 0)
            }, completion: nil)
            timeDifferentiator += 1.0
        }
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        if scrollView.contentOffset.y < -10.0 {
            self.navigationController?.popViewController(animated: true)
        }
    }
}
