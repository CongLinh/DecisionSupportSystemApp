//
//  ViewController.swift
//  DSSProject
//
//  Created by nguyen van cong linh on 26/03/2018.
//  Copyright © 2018 nguyen van cong linh. All rights reserved.
//

import UIKit

class HomeController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    let major: [String] = ["CNTT - Phần mềm", "CNTT - Truyền thông mạng", "CNTT - An toàn và bảo mật thông tin", "Sư phạm", "Kinh tế"]
    
    let cellId = "cellId"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(MajorCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.alwaysBounceVertical = true // scroll cell when cell is not enough to scroll
        
        setupNavBar()
        setupTopView()
        setupHomeView()
    }
    
    // setupBar
    func setupNavBar() {
        let lable = UILabel()
        lable.text = "CareerBuilder"
        lable.textColor = UIColor.white
//        lable.font = UIFont(name: "Helvetica", size: 25.0)
        lable.font = UIFont.boldSystemFont(ofSize: 25)
        lable.backgroundColor = UIColor.clear
        self.navigationItem.titleView = lable
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return major.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! MajorCell
        
        cell.lbl.text = major[indexPath.row]
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 60)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    // move to another screen when click on per row
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.pushViewController(MajorController(), animated: true)
    }
    
    // initial topView
    let topView: UIView = {
       let topView = UIView()
        topView.backgroundColor = UIColor.yellow
        
        topView.translatesAutoresizingMaskIntoConstraints = false
        return topView
    }()
    
    let lbl: UILabel = {
       let lbl = UILabel()
        lbl.text = "Majors List"
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let line: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor.darkGray
        line.translatesAutoresizingMaskIntoConstraints = false
        
        return line
    }()
    
    func setupTopView() {
        topView.addSubview(lbl)
        topView.addSubview(line)
        
        topView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lbl]))
        topView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": line]))
        topView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-2-[v0][v1(1)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lbl, "v1": line]))
    }
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.translatesAutoresizingMaskIntoConstraints = false
        
        
        return cv
    }()
    
    func setupHomeView() {
        view.addSubview(topView)
        view.addSubview(collectionView)
        
        topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        topView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        topView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        collectionView.topAnchor.constraint(equalTo: topView.bottomAnchor).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
}

