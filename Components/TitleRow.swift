//
//  TitleRow.swift
//  Chat
//
//  Created by shaima on 21/11/1444 AH.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://unsplash.com/s/photos/portrait")
    var name = "Sarah Smith"
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
.aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            }  placeholder: {
                ProgressView()
            }
            VStack(alignment: .leading) {
            Text(name)
                .font(.title).bold()
            Text("online")
                .font(.caption)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, alignment:  .leading)
        
        Image(systemName: "phone.fill")
            .foregroundColor(.gray)
            .padding(10)
            .background(.white)
            .cornerRadius(50)
    }
        .padding()
}}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color.yellow)
    }
}
