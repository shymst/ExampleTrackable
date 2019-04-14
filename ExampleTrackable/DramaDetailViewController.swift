//
//  DramaDetailViewController.swift
//  ExampleAnalytics
//
//  Created by Shunya Yamashita on 2019/04/14.
//  Copyright © 2019 Shunya Yamashita. All rights reserved.
//

import UIKit

class DramaDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Drama Detail"
    }
    
    override func loadView() {
        view = UINib(nibName: className, bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView
    }
}
