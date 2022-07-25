//
//  ContentView.swift
//  MonitoringNetwork
//
//  Created by 平岡修 on 2022/07/25.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var networkState: MonitoringNetworkState
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(networkState.isConnected ? .blue : .black)
            
            Text(networkState.isConnected ? "Good connection" : "Bad connection")
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MonitoringNetworkState())
    }
}
