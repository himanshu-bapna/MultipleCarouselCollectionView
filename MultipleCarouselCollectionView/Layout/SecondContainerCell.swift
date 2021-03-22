//
//  SecondContainerCell.swift
//  MultipleCarouselCollectionView
//
//  Created by Himanshu Bapna on 17/03/21.
//

import  UIKit

class SecondContainerCell: CollectionViewContainerCell, UICollectionViewDataSource{

    override init(frame: CGRect) {
        super.init(frame: frame)
        appsCollectionView.dataSource = self
        appsCollectionView.register(SecondCollectionViewCell.self)
    }
    
    override func isHeaderSection() -> Bool {
        return true
    }
    
    override func setHeaderView() {
        super.setHeaderView(for: SecondHeaderViewCell.self)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
      
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(SecondCollectionViewCell.self, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 300, height: 220)
    }

}

