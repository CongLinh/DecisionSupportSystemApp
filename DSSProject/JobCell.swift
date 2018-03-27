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
        //label.text = "LAP TRINH VIEN iOS - COWELL"
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.textColor = UIColor(displayP3Red: 0/255, green: 160/255, blue: 176/255, alpha: 1)
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let factory: UILabel = {
        let lbl = UILabel()
        lbl.text = "CONG TY TNHH MISA co."
        lbl.textColor = UIColor(displayP3Red: 127/255, green: 131/255, blue: 133/255, alpha: 1)
        lbl.font = UIFont.boldSystemFont(ofSize: 17)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let address: UILabel = {
        let label = UILabel()
        label.text = "Address: Ha Noi - Viet Nam"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    let salary: UILabel = {
        let label = UILabel()
        label.text = "Salary: 2000 USD"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let datePost: UILabel = {
        let date = UILabel()
        date.text = "15.01.1997"
        date.font = UIFont.boldSystemFont(ofSize: 16)
        date.translatesAutoresizingMaskIntoConstraints = false
        return date
    }()
    
    let expire: UILabel = {
        let lbl = UILabel()
        lbl.text = "08.04.1997"
        
        lbl.textColor = .red
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let labelAddress: UILabel = {
        let lbl = UILabel()
        lbl.text = "Address: "
        lbl.font = UIFont.italicSystemFont(ofSize: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    let labelSalary: UILabel = {
        let lbl = UILabel()
        lbl.text = "Salary: "
        lbl.font = UIFont.italicSystemFont(ofSize: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    let labelDatePost: UILabel = {
        let lbl = UILabel()
        lbl.text = "Posted: "
        lbl.font = UIFont.italicSystemFont(ofSize: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    let labelExpier: UILabel = {
        let lbl = UILabel()
        lbl.text = "Expire: "
//        lbl.textColor = .red
        lbl.font = UIFont.italicSystemFont(ofSize: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    
    
    func setupCell() {
        addSubview(job)
        addSubview(address)
        addSubview(salary)
        addSubview(datePost)
        addSubview(labelAddress)
        addSubview(factory)
        addSubview(labelSalary)
        addSubview(labelDatePost)
        addSubview(labelExpier)
        addSubview(expire)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": job]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": factory]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-80-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": address]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-80-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": salary]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-80-[v0]-30-[v1]-5-[v2]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": datePost, "v1": labelExpier, "v2": expire]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": labelAddress]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": labelSalary]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": labelDatePost]))
        
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[v0]-5-[v4]-10-[v1]-5-[v2]-5-[v3]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": job, "v1": address, "v2": salary, "v3": datePost, "v4": factory]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-68-[v0]-5-[v1]-5-[v2]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": labelAddress, "v1": labelSalary, "v2": labelDatePost]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-116-[v0]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": labelExpier]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-116-[v0]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": expire]))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
