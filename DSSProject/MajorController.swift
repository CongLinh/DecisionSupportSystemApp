//
//  MajorController.swift
//  DSSProject
//
//  Created by Thanh on 26/03/2018.
//  Copyright © 2018 nguyen van cong linh. All rights reserved.
//

import UIKit

class MajorController: HomeController {
   override func viewDidLoad() {
//        super.viewDidLoad()
        super.setupNavBar()
        setupMajor()
        view.backgroundColor = .red
    }
    
    let topView2: UIView = {
        let topView = UIView()
        topView.backgroundColor = .white
        topView.translatesAutoresizingMaskIntoConstraints = false
        return topView
    }()
    
    func setupMajor(){
        view.addSubview(topView2)
        
        topView2.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        topView2.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        topView2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        topView2.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
