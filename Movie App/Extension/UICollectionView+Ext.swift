//
//  UICollectionView+Ext.swift
//  Movie App
//
//  Created by Ali Görkem Aksöz on 2.01.2023.
//

import UIKit

extension UICollectionView {
    func reloadOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
