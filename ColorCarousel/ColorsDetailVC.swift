//
//  ColorsDetailVC.swift
//  ColorCarousel
//
//  Created by Cesar Lopez on 10/16/22.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .white
    }
}
