//
//  ChatApp.swift
//  Chat
//
//  Created by shaima on 21/11/1444 AH.
//

import SwiftUI
import Firebase
//class of firebase

@main
struct ChatApp: App {
    init() {
        FirebaseApp.configure()
    }
  //  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
