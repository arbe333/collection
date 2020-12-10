//
//  TripCollectionViewController.swift
//  collection
//
//  Created by arbe on 2020/12/10.
//

import UIKit

private let reuseIdentifier = "Cell"

class TripCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 從程式計算 cell 的大小
        let itemSpace: CGFloat = 3
        let columnCount: CGFloat = 3
        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        let width = floor((collectionView.bounds.width - itemSpace * (columnCount-1)) / columnCount)
        flowLayout?.itemSize = CGSize(width: width, height: width)
        flowLayout?.estimatedItemSize = .zero
        flowLayout?.minimumInteritemSpacing = itemSpace
        flowLayout?.minimumLineSpacing = itemSpace
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
       return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return 21
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(TripCollectionViewCell.self)", for: indexPath) as! TripCollectionViewCell
       cell.imageView.image = UIImage(named: "travel_\(indexPath.item)")
        print("travel_\(indexPath.item)")
       return cell
    }
}
