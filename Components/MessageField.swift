//
//  MessageField.swift
//  Chat
//
//  Created by shaima on 21/11/1444 AH.
//

import SwiftUI

struct MessageField: View {
    @EnvironmentObject var MessagesManager: MessagesManager
    @State private var message = ""
    var body: some View {
        HStack {
            CustomTextField(placeholder: Text("enter your message hero"), text: $message)
            Button {
                MessagesManager.sendMessage(text: message)
               // print("message sent")
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.yellow)
                    .cornerRadius(50)
                
            }
            }
        .padding(.horizontal)
        .padding(.vertical,10)
        .background(Color.gray)
        .cornerRadius(50)
        .padding()
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
            .environmentObject(MessagesManager())
    }
}
struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}
    
    var body: some View {
        ZStack(alignment: .leading )
        {
            if text.isEmpty
            {
                placeholder.opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged:
                        editingChanged, onCommit: commit)
        }
    }
}
