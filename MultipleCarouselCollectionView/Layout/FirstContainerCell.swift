//
//  FirstContainerCell.swift
//  MultipleCarouselCollectionView
//
//  Created by Himanshu Bapna on 17/03/21.
//

import  UIKit

class FirstContainerCell: CollectionViewContainerCell, UICollectionViewDataSource{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        appsCollectionView.dataSource = self
        appsCollectionView.register(FirstCollectionViewCell.self)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          return 7
    }
      
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(FirstCollectionViewCell.self, for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 140, height: 168)
    }
}
