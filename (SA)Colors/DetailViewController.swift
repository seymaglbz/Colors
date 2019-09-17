//
//  DetailViewController.swift
//  (SA)Colors
//
//  Created by Şeyma Gılbaz on 17.09.2019.
//  Copyright © 2019 Şeyma Gılbaz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var selectedColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let selectedColor = selectedColor{
            view.backgroundColor = selectedColor
        }
     }
}
