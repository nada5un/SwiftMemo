//
//  swiftMemoApp.swift
//  Shared
//
//  Created by daeun on 2022/10/02.
//

import SwiftUI

@main
struct swiftMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
