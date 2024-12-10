//
//  ListPerformanceProjectApp.swift
//  ListPerformanceProject
//
//  Created by Kritchanat on 10/12/2567 BE.
//

import SwiftUI

@main
struct ListPerformanceProjectApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
