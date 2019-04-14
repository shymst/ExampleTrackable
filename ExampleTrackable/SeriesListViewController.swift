//
//  SeriesListViewController.swift
//  ExampleAnalytics
//
//  Created by Shunya Yamashita on 2019/04/14.
//  Copyright © 2019 Shunya Yamashita. All rights reserved.
//

import UIKit

class SeriesListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Series List"
    }
    
    override func loadView() {
        view = UINib(nibName: className, bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    @IBAction func tappedDramaDetailButton(_ sender: Any) {
        let viewController = DramaDetailViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
