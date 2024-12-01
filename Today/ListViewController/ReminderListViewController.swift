//
//  ViewController.swift
//  Today
//
//  Created by Kari Douglas on 11/29/24.
//

import UIKit

class ReminderListViewController: UICollectionViewController {
//    typealias DataSource = UICollectionViewDiffableDataSource<Int, String>
//    typealias Snapshot = NSDiffableDataSourceSnapshot<Int, String>
    
    var dataSource: DataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
        
        let cellRegistration = UICollectionView.CellRegistration(handler: cellRegistrationHandler)
        
        dataSource = DataSource(collectionView: collectionView){
            (collectionView: UICollectionView, indexPath: IndexPath, itemIdentifier: String) in
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: itemIdentifier)
        }
        
        var snapshot = Snapshot()
        snapshot.appendSections([0])
        snapshot.appendItems(Reminder.sampleData.map { $0.title })
        dataSource.apply(snapshot)
        
        collectionView.dataSource = dataSource
        
    }
    
    //    list section
    private func listLayout() -> UICollectionViewCompositionalLayout {
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = .clear
        
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }
    
    
}

