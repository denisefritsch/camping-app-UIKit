//
//  LoggerExtension.swift
//  pet-project
//
//  Created by Denise Fritsch on 12.09.22.
//

import os.log

extension Logger {
    static let uiLogger = Logger.init(subsystem: "UI", category: "UI")
    static let modelLogger = Logger.init(subsystem: "Model", category: "Data")
    static let functionalityLogger = Logger.init(subsystem: "Functionality", category: "General")
    static let networkLogger = Logger.init(subsystem: "Functionality", category: "Network")
}
