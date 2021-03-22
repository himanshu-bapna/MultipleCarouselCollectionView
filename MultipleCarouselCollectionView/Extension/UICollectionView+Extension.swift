//
//  UICollectionView+Extension.swift
//  MultipleCarouselCollectionView
//
//  Created by Himanshu Bapna on 17/03/21.
//

import UIKit

extension UICollectionView {

    func register(_ cellClasses: UICollectionViewCell.Type...) {
        cellClasses.forEach { cellClass in
            register(UINib(nibName: cellClass.nib, bundle: nil), forCellWithReuseIdentifier: cellClass.identifier)
        }
    }
    
    func register(_ cellClasses: UICollectionReusableView.Type..., forSupplementaryViewOfKind kind: String) {
        cellClasses.forEach { cellClass in

            register(UINib(nibName: cellClass.nib, bundle: nil), forSupplementaryViewOfKind: kind, withReuseIdentifier: cellClass.identifier)
        }
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: cellClass.identifier, for: indexPath) as? T else {
            fatalError("Can't dequeue cell with identifier \(cellClass.identifier)")
        }
        return cell
    }
    
    func dequeueReusableSupplementaryView<T: UICollectionReusableView>(_ cellClass: T.Type, ofKind kind: String , for indexPath: IndexPath) -> T {
        guard let view = dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: cellClass.identifier, for: indexPath)  as? T else {
            fatalError("Can't dequeue cell with identifier \(cellClass.identifier)")
        }
        return view
    }
}
