//
//  ContentViewModel.swift
//  iOS16-SwiftUI-Showdown
//
//  Created by Łukasz Stachnik on 01/09/2022.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    @Published var navigationPath = NavigationPath()
    
    var features: [Feature] = [
        Feature(title: "Charts 📊",
                description: "Use a chart to build expressive and dynamic data visualizations inside a SwiftUI view.",
                type: .charts),
        Feature(title: "Gauge 🔜",
                description: "SwiftUI introduces a new view called Gauge for displaying progress. In the most basic form, a gauge has a default range from 0 to 1.",
                type: .gauge)
    ]
    
    func showFeature(_ feature: Feature) {
        navigationPath.append(feature)
    }
}