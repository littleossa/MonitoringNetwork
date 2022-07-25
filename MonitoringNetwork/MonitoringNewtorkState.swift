//
//  MonitoringNewtorkState.swift
//  MonitoringNetwork
//
//  Created by 平岡修 on 2022/07/25.
//

import Foundation
import Network

class MonitoringNetworkState: ObservableObject {
    
    private let monitor = NWPathMonitor()
    private let queue = DispatchQueue.global(qos: .background)
    
    @Published var isConnected = false
    
    init() {
        monitor.start(queue: queue)
        
        monitor.pathUpdateHandler = { path in
            if path.status == .satisfied {
                OperationQueue.main.addOperation {
                    self.isConnected = true
                }
            } else {
                OperationQueue.main.addOperation {
                    self.isConnected = false
                }
            }
        }
    }
}
