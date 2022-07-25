//
//  MonitoringNetworkApp.swift
//  MonitoringNetwork
//
//  Created by 平岡修 on 2022/07/25.
//

import SwiftUI

@main
struct MonitoringNetworkApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(MonitoringNetworkState())
        }
    }
}
