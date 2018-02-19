//
//  categoryCellCollectionViewCell.swift
//  Otonomis_test
//
//  Created by Danny Bokati on 2/19/18.
//  Copyright © 2018 Gtech Developeres. All rights reserved.
//

import UIKit

class categoryCellCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageTitle)
        categoryTitle.text = category.title
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return table.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as? collectionCell {
            let  = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
            
        }else {
            return collectionCell()
        }
    }
  
}
