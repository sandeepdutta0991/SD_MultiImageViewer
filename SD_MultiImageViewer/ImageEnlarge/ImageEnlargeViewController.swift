//
//  ImageEnlargeViewController.swift
//  SD_MultiImageViewer
//
//  Created by SANDEEP DUTTA on 08/09/19.
//  Copyright © 2019 SANDEEP DUTTA. All rights reserved.
//

import UIKit

class ImageEnlargeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var imageEnlargeArray = [Any]()
    var selectedIndex = 0
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
       
        collectionView.scrollToItem(at: IndexPath(item: selectedIndex, section: 0), at: [.centeredVertically, .centeredHorizontally], animated: false)
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension ImageEnlargeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageEnlargeArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageEnlargeCollectionViewCell", for: indexPath) as! ImageEnlargeCollectionViewCell
        cell.imgItem.image = imageEnlargeArray[indexPath.row] as? UIImage
            return cell
        
    }
    
}

extension ImageEnlargeViewController: UICollectionViewDelegate {
    
}
