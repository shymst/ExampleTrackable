//
//  AnalyticsEvent.swift
//  ExampleTrackable
//
//  Created by Shunya Yamashita on 2019/04/14.
//  Copyright © 2019 Shunya Yamashita. All rights reserved.
//

protocol AnalyticsEvent {
    var name: String { get }
    var data: [String: Any] { get }
}

struct MostViewedReloadAnalyticsEvent: AnalyticsEvent {
    var name: String = "MostViewedReload"
    var data: [String : Any] {
        return ["count": count]
    }
    
    private let count: Int
    
    init(count: Int) {
        self.count = count
    }
}
