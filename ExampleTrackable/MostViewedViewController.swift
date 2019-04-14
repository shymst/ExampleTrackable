//
//  MostViewedViewController.swift
//  ExampleAnalytics
//
//  Created by Shunya Yamashita on 2019/04/14.
//  Copyright © 2019 Shunya Yamashita. All rights reserved.
//

import UIKit

class MostViewedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MostViewed"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        trackScreen(.home)
    }
    
    override func loadView() {
        view = UINib(nibName: className, bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    @IBAction func tappedSeriesListButton(_ sender: Any) {
        let viewController = SeriesListViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func tappedReloadButton(_ sender: Any) {
        trackEvent(MostViewedReloadAnalyticsEvent(count: 2))
    }
}
