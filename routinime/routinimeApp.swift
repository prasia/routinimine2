//
//  routinimeApp.swift
//  routinime
//
//  Created by Prasi Aravind on 11/5/22.
//

import SwiftUI

@main
struct routinimeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            QuizView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
