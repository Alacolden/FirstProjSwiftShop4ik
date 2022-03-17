//
//  Sdd2App.swift
//  Sdd2
//
//  Created by Admin on 20.01.2022.
//

import SwiftUI

@main
struct Sdd2App: App {
    @StateObject private var dataController = DataBaseController()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
