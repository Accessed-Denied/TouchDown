//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Rohit Saini on 16/10/21.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
