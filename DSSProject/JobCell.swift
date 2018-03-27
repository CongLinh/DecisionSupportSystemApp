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
        
        backgroundColor = .red
        setupCell()
    }
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Cell"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupCell() {
        addSubview(label)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": label]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": label]))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
