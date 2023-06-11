//
//  ContentView.swift
//  Chat
//
//  Created by shaima on 21/11/1444 AH.
// 1-kk 2-EM 3-sater 4-tw 5-windwos 6-

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
   // var massageArray = ["hello you" , "how are you doing?",
                   //     "i've been building swiftui applications from scratch and it's so much fun! "]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                ScrollView {
                    ForEach(messagesManager.messages, id: \.id) { message in
                        MessageBubble(message: message)
                                    //  (id:
                                                     //   "12345", text: text, received: true,
                                                     //  timestamp: Date()))
                        
                    }
                }
                .padding(.top, 10)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            
            .background(Color.yellow)
            MessageField()
                //.environmentObject(MessagesManager)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
