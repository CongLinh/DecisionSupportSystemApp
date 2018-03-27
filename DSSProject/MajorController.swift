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
        setupNavBar()
        view.backgroundColor = .white
        collectionView2.delegate = self
        collectionView2.dataSource = self
    
        collectionView2.register(JobCell.self, forCellWithReuseIdentifier: cellId2)
        setupTopView()
        setupMajor()
    }
    
    let cellId2 = "cellId2"
    
    let jobs: [String] = ["LAP TRINH VIEN iOS/Adroid", "LAP TRINH VIEN PHP/JAVASCRIPT", "TESTER JAVA/C/C++", "PHAN TICH YEU CAU PHAN MEM", "TRIEN KHAI VA BAO TRI PHAN MEM"]
    let factories: [String] = ["COWELL CO.", "CTY TNHH MISA", "FSOFT", "TAP DOAN LINHSOFT", "iSOFT"]
    let addresses: [String] = ["Ha Noi", "Hai Phong", "Hai Duong", "Thanh Hoa", "TP Ho Chi Minh"]
    
    let salaries: [String] = ["100-2100 USD", "400-900 USD", ">3000 USD", "300-450 USD", "900-1020 USD"]
    let datePostes: [String] = ["15.01.1997", "08.04.1997", "20.05.2016", "20.09.2017", "10.10.2009"]
    let expires: [String] = ["08.04.1997", "08.04.1998", "20.09.2017", "30.10.2017", "10.11.2015"]
    
    let topView2: UIView = {
        let topView = UIView()
        topView.backgroundColor = UIColor.yellow
        topView.translatesAutoresizingMaskIntoConstraints = false
        return topView
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return jobs.count
    }
   
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId2, for: indexPath) as! JobCell
        
        cell.job.text = jobs[indexPath.item]
        cell.address.text = addresses[indexPath.item]
        cell.salary.text = salaries[indexPath.item]
        cell.datePost.text = datePostes[indexPath.item]
        cell.expire.text = expires[indexPath.item]
        cell.factory.text = factories[indexPath.item]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.pushViewController(JobDetail(), animated: true)
    }
    
    
    let collectionView2: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView2 = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView2.translatesAutoresizingMaskIntoConstraints = false
        collectionView2.backgroundColor = UIColor(displayP3Red: 243/255, green: 244/255, blue: 244/255, alpha: 1)
        return collectionView2
    }()
    
    func setupNavBar(){
        let lable = UILabel()
        lable.text = "CareerBuilder"
        lable.textColor = UIColor.white
        lable.font = UIFont.boldSystemFont(ofSize: 25)
        lable.backgroundColor = UIColor.clear
        self.navigationItem.titleView = lable
    }
    
    //SETUP TOPVIEW
    var label: UILabel = {
        var lbl = UILabel()
        //lbl.text = "CNTT - Phần mềm"
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let line: UIView = {
        let line = UIView()
        line.backgroundColor = UIColor(displayP3Red: 243/255, green: 244/255, blue: 244/255, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    func setupTopView() {
        topView2.addSubview(label)
        topView2.addSubview(line)
        
        topView2.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": label]))
        topView2.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": line]))
        
        topView2.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-2-[v0][v1(10)]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": label, "v1":line]))
    }
    
    func setupMajor(){
        self.view.addSubview(topView2)
        self.view.addSubview(collectionView2)
        
        topView2.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        topView2.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        topView2.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        topView2.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        collectionView2.topAnchor.constraint(equalTo: topView2.bottomAnchor).isActive = true
        collectionView2.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        collectionView2.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        collectionView2.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }
}
