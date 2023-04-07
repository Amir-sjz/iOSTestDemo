//
//  iOSTestDemo_SwiftApp.swift
//  iOSTestDemo_Swift
//
//  Created by chengz on 2023/3/10.
//

import SwiftUI

@main
struct iOSTestDemo_SwiftApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
