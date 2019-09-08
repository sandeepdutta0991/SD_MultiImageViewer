//
//  ImageEnlargeFlowLayout.swift
//  SD_MultiImageViewer
//
//  Created by SANDEEP DUTTA on 08/09/19.
//  Copyright © 2019 SANDEEP DUTTA. All rights reserved.
//

import UIKit

class ImageEnlargeFlowLayout: UICollectionViewFlowLayout {

    override func prepare() {
        
        let maxNumItem = 1
        let cellHeight: CGFloat = UIScreen.main.bounds.height - 60.0
        guard let collectionView = collectionView else { return }
        
        self.scrollDirection = .horizontal
        collectionView.isPagingEnabled = true
        //  let availableWidth = collectionView.bounds.inset(by: collectionView.layoutMargins).width
        
        self.minimumInteritemSpacing = 0.0
        self.minimumLineSpacing = 0.0
        
        let availableWidth = UIScreen.main.bounds.width
        
        let cellWidth = (availableWidth / CGFloat(maxNumItem)).rounded(.down)
        
        self.itemSize = CGSize(width: cellWidth, height: cellHeight)
        self.sectionInset = UIEdgeInsets(top: self.minimumInteritemSpacing, left: 0.0, bottom: 0.0, right: 0.0)
        self.sectionInsetReference = .fromSafeArea
        
    }
}
