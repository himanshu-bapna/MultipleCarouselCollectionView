//
//  SecondCollectionViewCell.swift
//  MultipleCarouselCollectionView
//
//  Created by Himanshu Bapna on 17/03/21.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var statusParentView: UIView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var venueImage: UIImageView!
    @IBOutlet weak var venueContinent: UILabel!
    @IBOutlet weak var venueName: UILabel!
    @IBOutlet weak var offerTime: UILabel!
    @IBOutlet weak var venueOffer: UILabel!
    @IBOutlet weak var venueLocation: UILabel!
    @IBOutlet weak var gradient: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureAppearance()
    }
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: self.layer)
        setGradientLayer()
    }
    
    func setGradientLayer()  {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
          UIColor(red: 0, green: 0, blue: 0, alpha: 0.8).cgColor,
          UIColor(red: 0, green: 0, blue: 0, alpha: 0.4).cgColor,
          UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        ]
        
        gradientLayer.locations = [0, 0.61, 1]
        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradientLayer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: -0.01, b: -1, c: 1, d: 0, tx: 0.05, ty: 1))
        gradientLayer.bounds = self.gradient.bounds.insetBy(dx: -0.5*self.gradient.bounds.size.width, dy: -0.5*self.gradient.bounds.size.height)

        gradientLayer.position = self.gradient.center
        self.gradient.layer.addSublayer(gradientLayer)//(gradientLayer, at: 0)//(gradientLayer)
        self.gradient.layer.cornerRadius = 20
    }
    
    
    func configureAppearance() {
        containerView.layer.cornerRadius = 24
        containerView.layer.masksToBounds = true
        statusParentView.layer.backgroundColor = UIColor(red: 0.408, green: 0.38, blue: 0.373, alpha: 0.5).cgColor
        statusParentView.layer.cornerRadius = 10
        setGradientLayer()
    }
}
