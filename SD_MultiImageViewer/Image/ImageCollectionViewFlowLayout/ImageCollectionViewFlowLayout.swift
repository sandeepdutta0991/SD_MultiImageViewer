//
//  ImageCollectionViewFlowLayout.swift
//  SD_MultiImageViewer
//
//  Created by SANDEEP DUTTA on 07/09/19.
//  Copyright © 2019 SANDEEP DUTTA. All rights reserved.
//

import UIKit

class ImageCollectionViewFlowLayout: UICollectionViewFlowLayout {
    
    override func prepare() {
        
        let maxNumItem = 1
        let cellHeight: CGFloat = 200.0
        guard let collectionView = collectionView else { return }
        
        let availableWidth = collectionView.bounds.inset(by: collectionView.layoutMargins).width
        
        let cellWidth = (availableWidth / CGFloat(maxNumItem)).rounded(.down)
        
        self.itemSize = CGSize(width: cellWidth, height: cellHeight)
        self.sectionInset = UIEdgeInsets(top: self.minimumInteritemSpacing, left: 0.0, bottom: 0.0, right: 0.0)
        self.sectionInsetReference = .fromSafeArea
        
    }

}
