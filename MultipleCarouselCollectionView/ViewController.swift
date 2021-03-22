//
//  ViewController.swift
//  MultipleCarouselCollectionView
//
//  Created by Himanshu Bapna on 17/03/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewBackground()
        configureCollectionView()
    }
    
    func setViewBackground() {
        self.view.backgroundColor = UIColor(red: 0.98, green: 0.978, blue: 0.97, alpha: 1)
        self.collectionView.backgroundColor = .clear
    }
    
    func configureCollectionView() {
        collectionView.register(FirstContainerCell.self, forCellWithReuseIdentifier: "FirstContainerCell")
        collectionView.register(SecondContainerCell.self, forCellWithReuseIdentifier: "SecondContainerCell")
        collectionView.register(ThirdContainerCell.self, forCellWithReuseIdentifier: "ThirdContainerCell")
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

// MARK: - Handle CollectionView
extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(FirstContainerCell.self, for: indexPath)
            return cell
        } else if indexPath.item == 1{
            let cell = collectionView.dequeueReusableCell(SecondContainerCell.self, for: indexPath)
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(ThirdContainerCell.self, for: indexPath)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
       let headerView = collectionView.dequeueReusableSupplementaryView(HeaderView.self, ofKind: kind, for: indexPath)
         return headerView
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item == 0 {
            return CGSize(width: self.collectionView.frame.width, height: 178) //178
        } else {
            return CGSize(width: self.collectionView.frame.width, height: 300) //240
        }
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
}
