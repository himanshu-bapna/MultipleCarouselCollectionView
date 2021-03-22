//
//  FirstCollectionViewCell.swift
//  MultipleCarouselCollectionView
//
//  Created by Himanshu Bapna on 17/03/21.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var image: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
         configureAppearance()
    }

    func configureAppearance(){
        self.view.layer.cornerRadius = 24
        self.view.backgroundColor = .white
    }
}
