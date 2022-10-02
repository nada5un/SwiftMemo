//
//  swiftMemoApp.swift
//  Shared
//
//  Created by daeun on 2022/10/02.
//

import SwiftUI

@main
struct swiftMemoApp: App {
    @StateObject var store = MemoStore()
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(store)
        }
    }
}
