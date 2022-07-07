//
//  TestClientApp.swift
//  TestClient
//
//  Created by Conrad Felgentreff on 02.07.22.
//

import SwiftUI
import iStream

@main
struct TestClientApp: App {
    
    @StateObject private var callingViewModel: CallingViewModel = CallingViewModel(callingModel: AzureCallingModel())
    @StateObject private var chatViewModel: ChatViewModel = ChatViewModel(chatModel: AzureChatModel())
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(self.callingViewModel)
                .environmentObject(self.chatViewModel)
        }
    }
}
