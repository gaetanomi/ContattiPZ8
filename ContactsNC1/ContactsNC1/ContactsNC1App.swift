//
//  ContactsNC1App.swift
//  ContactsNC1
//
//  Created by GaetanoMiranda on 16/11/22.
//

import SwiftUI

@main
struct ContactsNC1App: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext )
        }
    }
}
