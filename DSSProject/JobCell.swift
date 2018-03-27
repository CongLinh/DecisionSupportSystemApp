//
//  JobCell.swift
//  DSSProject
//
//  Created by nguyen van cong linh on 26/03/2018.
//  Copyright © 2018 nguyen van cong linh. All rights reserved.
//

import UIKit

class JobCell: UICollectionViewCell {
    override init(frame: CGRect){
        super.init(frame: frame)
        
        backgroundColor = .white
        setupCell()
    }
    
    let job: UILabel = {
        let label = UILabel()
        label.text = "LAP TRINH VIEN iOS - COWELL ASIAN"
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let address: UILabel = {
        let label = UILabel()
        label.text = "Address: Ha Noi - Viet Nam"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let salary: UILabel = {
        let label = UILabel()
        label.text = "Salary: 2000 USD"
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    func setupCell() {
        addSubview(job)
        addSubview(address)
        addSubview(salary)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": job]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": address]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": salary]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-5-[v0]-10-[v1]-1-[v2]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": job, "v1": address, "v2": salary]))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
