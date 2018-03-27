//
//  JobDetail.swift
//  DSSProject
//
//  Created by Thanh on 27/03/2018.
//  Copyright © 2018 nguyen van cong linh. All rights reserved.
//

import UIKit

class JobDetail: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let imgName: [String] = ["locationIcon", "jobNameIcon", "experiencedIcon", "bagIcon", "dollarIcon", "dateIcon"]
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)

        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(GeneralInfor.self, forCellWithReuseIdentifier: cellId)
        
        scrollView.contentSize = CGSize(width: view.frame.width, height: 900)
        
        setupMainView()
    }
    
    // create and setup JobTop View
    let jobDetailView: UIView = {
       let jobDetail = UIView()
        jobDetail.backgroundColor = .yellow
        jobDetail.translatesAutoresizingMaskIntoConstraints = false
        
        return jobDetail
    }()
    
    let lbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Job Detail"
        lbl.font = UIFont.systemFont(ofSize: 20)
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    // create and setup name work and name company
    let nameWorkAndCompany: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    let nameJob: UILabel = {
       let name = UILabel()
        name.text = "Lập trình viên IOS"
        name.font = UIFont.boldSystemFont(ofSize: 28)
        name.textColor = UIColor(red: 35/255, green: 147/255, blue: 197/255, alpha: 1)
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    let nameCompany: UILabel = {
       let name = UILabel()
        name.text = "Co-Well Behind your success!"
        name.font = UIFont.boldSystemFont(ofSize: 20)
        name.textColor = .black
        
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    // create and setup Job Description and Job Requirement View
    let jobDescriptionView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let jobDescriptionLbl: UILabel = {
       let jobDesLbl = UILabel()
        jobDesLbl.text = "Job Description"
        jobDesLbl.font = UIFont.boldSystemFont(ofSize: 25)
        jobDesLbl.textColor = .black
        
        jobDesLbl.translatesAutoresizingMaskIntoConstraints = false
        
        return jobDesLbl
    }()
    
    let jobRequirementLbl: UILabel = {
        let jobReqLbl = UILabel()
        jobReqLbl.text = "Job Requirement"
        jobReqLbl.font = UIFont.boldSystemFont(ofSize: 25)
        jobReqLbl.textColor = .black
        
        jobReqLbl.translatesAutoresizingMaskIntoConstraints = false
        
        return jobReqLbl
    }()
    
    let detailDescription: UILabel = {
        let detailDes = UILabel()
//        detailDes.backgroundColor = .green
        detailDes.numberOfLines = 0
        detailDes.text = "1. Tham gia phát triển các dự án trên nền tảng IOS sử dụng Swift cho các đối tác lớn đến từ Nhật Bản.\n2. Tham gia phát triển các dự án Mobile.\n3. Công việc được giao trực tiếp từ Quản lý dự án và khách hàng."
        detailDes.contentMode = .topLeft
        
        detailDes.translatesAutoresizingMaskIntoConstraints = false
        return detailDes
    }()
    
    let detailRequirement: UILabel = {
        let detailReq = UILabel()
//        detailReq.backgroundColor = .green
        detailReq.numberOfLines = 0
        detailReq.text = "1. Nắm vững về lập trình hướng đối tượng.\n2. Thành thạo ngôn ngữ lập trình Swift.\n3. Có tư duy logic về data structures, algorithm, design patterns và mô hình MVC, MVVM.\n"
        
        detailReq.translatesAutoresizingMaskIntoConstraints = false
        
        
        return detailReq
    }()
    
    // setup job description and job requirement View
    func setupJobDesReqView() {
        jobDescriptionView.addSubview(jobDescriptionLbl)
        jobDescriptionView.addSubview(detailDescription)
        jobDescriptionView.addSubview(jobRequirementLbl)
        jobDescriptionView.addSubview(detailRequirement)
        
        jobDescriptionView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(60)]-10-[v1]-10-[v2(60)]-10-[v3]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobDescriptionLbl,"v1": detailDescription,"v2": jobRequirementLbl,"v3": detailRequirement]))
        jobDescriptionView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobDescriptionLbl]))
        jobDescriptionView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": detailDescription]))
        
        jobDescriptionView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobRequirementLbl]))
        jobDescriptionView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-15-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": detailRequirement]))
    }
    
    
    // setup name work and name company View
    func setupNameWorkCompany() {
        nameWorkAndCompany.addSubview(nameJob)
        nameWorkAndCompany.addSubview(nameCompany)
        
        nameWorkAndCompany.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(60)][v1(50)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameJob,"v1": nameCompany]))
        nameWorkAndCompany.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameJob]))
        nameWorkAndCompany.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameCompany]))
    }
    
    
    // setup JobTop View
    func setupJobTopView() {
        jobDetailView.addSubview(lbl)
        
        jobDetailView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lbl]))
        jobDetailView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lbl]))
    }
    
    let scrollView = UIScrollView()
    
    func setupMainView() {
//        let screensize: CGRect = UIScreen.main.bounds
//        let screenWidth = view.frame.width
//        let screenHeight = view.frame.height
        
        
//        let scrollView = UIScrollView()
//        scrollView.contentSize.height = 2000
//        scrollView.contentSize.width = view.frame.width
        scrollView.alwaysBounceVertical = true
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scrollView)
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": scrollView]))
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": scrollView]))
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        setupBigView()

        scrollView.addSubview(bigView)

        scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": bigView]))
        scrollView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": bigView]))
        bigView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        bigView.heightAnchor.constraint(equalToConstant: 900).isActive = true
        
    }
    
    func setupBigView() {
        
        bigView.addSubview(jobDetailView)
        bigView.addSubview(nameWorkAndCompany)
        bigView.addSubview(collectionView)
        bigView.addSubview(jobDescriptionView)
        setupJobTopView()
        setupNameWorkCompany()
        setupJobDesReqView()
        
//        jobDetailView.topAnchor.constraint(equalTo: bigView.safeAreaLayoutGuide.topAnchor).isActive = true
//        jobDetailView.leftAnchor.constraint(equalTo: bigView.leftAnchor).isActive = true
//        jobDetailView.rightAnchor.constraint(equalTo: bigView.rightAnchor).isActive = true
//        jobDetailView.heightAnchor.constraint(equalToConstant: 50).isActive = true
//        
//        nameWorkAndCompany.topAnchor.constraint(equalTo: jobDetailView.bottomAnchor, constant: 2).isActive = true
//        nameWorkAndCompany.leftAnchor.constraint(equalTo: bigView.leftAnchor).isActive = true
//        nameWorkAndCompany.rightAnchor.constraint(equalTo: bigView.rightAnchor).isActive = true
//        nameWorkAndCompany.heightAnchor.constraint(equalToConstant: 125).isActive = true
//        
//        collectionView.topAnchor.constraint(equalTo: nameWorkAndCompany.bottomAnchor, constant: 1).isActive = true
//        collectionView.leftAnchor.constraint(equalTo: bigView.leftAnchor).isActive = true
//        collectionView.rightAnchor.constraint(equalTo: bigView.rightAnchor).isActive = true
//        collectionView.heightAnchor.constraint(equalToConstant: 302).isActive = true
//        
//        jobDescriptionView.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 1).isActive = true
//        jobDescriptionView.leftAnchor.constraint(equalTo: bigView.leftAnchor).isActive = true
//        jobDescriptionView.rightAnchor.constraint(equalTo: bigView.rightAnchor).isActive = true
//        jobDescriptionView.heightAnchor.constraint(equalToConstant: 600).isActive = true
        
        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0(50)]-1-[v1(125)]-2-[v2(302)]-2-[v3]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobDetailView,"v1": nameWorkAndCompany,"v2": collectionView,"v3": jobDescriptionView]))
        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobDetailView]))
        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": nameWorkAndCompany]))
        
        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": collectionView]))
        bigView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": jobDescriptionView]))
    }
    
    let bigView: UIView = {
       let bigView = UIView()
        bigView.translatesAutoresizingMaskIntoConstraints = false
        
        return bigView
    }()
    
    // create CollectionView
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        
        cv.translatesAutoresizingMaskIntoConstraints = false
        
        return cv
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! GeneralInfor
        cell.img.image = UIImage(named: imgName[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
