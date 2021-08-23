//
//  FlowStreckyHeader.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 8/23/21.
//

import UIKit

class FlowStreckyHeader: UICollectionViewFlowLayout {
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]?{
        let layoutAttributes = super.layoutAttributesForElements(in: rect)
        layoutAttributes?.forEach({ (attributes) in
            if attributes.representedElementKind == UICollectionView.elementKindSectionHeader{
                guard let collectionView = collectionView else{ return }
                let contentOffsetY = collectionView.contentOffset.y
                
                if contentOffsetY > 0 { return }
                
                let width = collectionView.frame.width
                let height = attributes.frame.height - contentOffsetY
                
                attributes.frame = CGRect(x: 0, y: contentOffsetY, width: width, height: height)
                
                
            }
        })
        
        return layoutAttributes
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return true
    }
}
