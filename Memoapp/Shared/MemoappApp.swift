//
//  MemoappApp.swift
//  Shared
//
//  Created by engn0383 on 2024/06/14.
//

import SwiftUI

@main
struct MemoappApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
