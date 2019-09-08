//
//  ImageViewController.swift
//  SD_MultiImageViewer
//
//  Created by SANDEEP DUTTA on 07/09/19.
//  Copyright © 2019 SANDEEP DUTTA. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
     let imageArray = [UIImage(named: "1.jpg"),UIImage(named: "2.jpg"),UIImage(named: "3.jpg")]
    
     var isFirstTimeScrolled = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if !isFirstTimeScrolled {
            
            isFirstTimeScrolled = true
            collectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: [.centeredVertically, .centeredHorizontally], animated: false)
            
        } else {
            // no hanlde
        }
    }
  
}

extension ImageViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let vc = UIStoryboard.init(name: "ImageEnlargeViewController", bundle: Bundle.main).instantiateViewController(withIdentifier: "ImageEnlargeViewController") as? ImageEnlargeViewController {
                vc.imageEnlargeArray = imageArray
                vc.selectedIndex = indexPath.row
                self.present(vc, animated: true, completion: nil)
            
        } else {
            print("No viewcontroller is found")
        }
    }
}

extension ImageViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        
        cell.imgItem.image = imageArray[indexPath.row]
        return cell
    }
}
