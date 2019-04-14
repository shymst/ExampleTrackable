//
//  AnalyticsScreen.swift
//  ExampleTrackable
//
//  Created by Shunya Yamashita on 2019/04/14.
//  Copyright © 2019 Shunya Yamashita. All rights reserved.
//

enum AnalyticsScreen {
    case home
    case mostViewed
    
    var name: (adobe: String, google: String) {
        switch self {
        case .home: return (adobe: "Home", google: "Top")
        case .mostViewed: return (adobe: "mostViewed", google: "mostViewed")
        }
    }
}
