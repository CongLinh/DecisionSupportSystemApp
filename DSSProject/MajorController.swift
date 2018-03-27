//
//  MajorController.swift
//  DSSProject
//
//  Created by Thanh on 26/03/2018.
//  Copyright © 2018 nguyen van cong linh. All rights reserved.
//

import UIKit

class MajorController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
   override func viewDidLoad() {
        super.viewDidLoad()
//        super.setupNavBar()
        view.backgroundColor = .red
        collectionView2.delegate = self
        collectionView2.dataSource = self
    
        collectionView2.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId2)
        setupMajor()
    }
    
    let cellId2 = "cellId2"
    
    let topView2: UIView = {
        let topView = UIView()
        topView.backgroundColor = .white
        topView.translatesAutoresizingMaskIntoConstraints = false
        return topView
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId2, for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
    
    
    let collectionView2: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView2 = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView2.translatesAutoresizingMaskIntoConstraints = false
        collectionView2.backgroundColor = .blue
        return collectionView2
    }()
    
    func setupMajor(){
        self.view.addSubview(topView2)
        self.view.addSubview(collectionView2)
        
        topView2.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        topView2.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        topView2.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        topView2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        collectionView2.topAnchor.constraint(equalTo: topView2.bottomAnchor).isActive = true
        collectionView2.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        collectionView2.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        collectionView2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
        
    }
}
