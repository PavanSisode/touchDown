//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Pavan Shisode on 20/05/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
