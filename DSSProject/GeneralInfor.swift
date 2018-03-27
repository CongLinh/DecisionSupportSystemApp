//
//  GeneralInfor.swift
//  DSSProject
//
//  Created by Thanh on 27/03/2018.
//  Copyright © 2018 nguyen van cong linh. All rights reserved.
//

import UIKit

class GeneralInfor: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let img: UIImageView = {
       let img = UIImageView()
        img.backgroundColor = .white
        img.contentMode = .scaleAspectFit
        
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    let lbl: UILabel = {
        let lbl = UILabel()
//        lbl.backgroundColor = .black
        lbl.numberOfLines = 2
        lbl.text = "Ha Noi"
        
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    func setupCell() {
        addSubview(lbl)
        addSubview(img)
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0(30)]-10-[v1]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": img, "v1": lbl]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[v0]-10-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": img]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": lbl]))
    }
}
