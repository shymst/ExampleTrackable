//
//  UIViewController+trackable.swift
//  ExampleAnalytics
//
//  Created by Shunya Yamashita on 2019/04/14.
//  Copyright © 2019 Shunya Yamashita. All rights reserved.
//

import UIKit

extension UIViewController {
    func trackScreen(_ screen: AnalyticsScreen) {
        print("trackScreen: \(screen.name.adobe), \(screen.name.google)")
    }
    
    func trackEvent(_ event: AnalyticsEvent) {
        print("trackEvent: \(event.name), \(event.data)")
    }
}
