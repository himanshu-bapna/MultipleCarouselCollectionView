//
//  CollectionViewContainerCell.swift
//  MultipleCarouselCollectionView
//
//  Created by Himanshu Bapna on 17/03/21.
//

import  UIKit

class CollectionViewContainerCell: UICollectionViewCell, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    let appsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 20
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
    }()
    
    func isHeaderSection() -> Bool{
        return false
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setHeaderView()
        addSubview(appsCollectionView)
        appsCollectionView.delegate = self
        
        if isHeaderSection() {
            setCollectionViewLayout(paddingTop: 50, UIEdgeInsetsLeft: 10)
        } else {
             setCollectionViewLayout(paddingTop: 0, UIEdgeInsetsLeft: 20)
        }
    }
    
    func setCollectionViewLayout(paddingTop: CGFloat, UIEdgeInsetsLeft left: CGFloat) {
        appsCollectionView.anchor(top: self.topAnchor, paddingTop: paddingTop, bottom: self.bottomAnchor, paddingBottom: 0, left: self.leftAnchor, paddingLeft: 0, right: self.rightAnchor, paddingRight: 0, width: 0, height: 0)

        appsCollectionView.contentInset = UIEdgeInsets(top: 0, left: left, bottom: 0, right: 0)
    }

    func setHeaderView(){
        //empty method do nothing
    }
    
    func setHeaderView(for aClass: UICollectionViewCell.Type){
        if isHeaderSection(){
            let bundle = Bundle(for: aClass)
            let nib = UINib(nibName: aClass.nib, bundle: bundle)
            let headerView = nib.instantiate(withOwner: self, options: nil)[0] as! UIView

            addSubview(headerView)
            headerView.anchor(top: self.topAnchor, paddingTop: 0, bottom: self.bottomAnchor, paddingBottom: 0, left: self.leftAnchor, paddingLeft: 0, right: self.rightAnchor, paddingRight: 0, width: UIScreen.main.bounds.width, height: 0)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
