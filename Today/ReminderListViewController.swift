//
//  ViewController.swift
//  Today
//
//  Created by Kari Douglas on 11/29/24.
//

import UIKit

class ReminderListViewController: UICollectionViewController{
    
    private func listLayout() -> UICollectionViewCompositionalLayout {
       
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = .clear
        
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
    }


}

