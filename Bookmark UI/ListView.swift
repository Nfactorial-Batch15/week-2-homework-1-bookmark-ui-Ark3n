//
//  ListView.swift
//  Bookmark UI
//
//  Created by Arken Sarsenov on 08.12.2021.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .center) {
                Title()
                Content()
                Spacer()
                AddBookmarkButton()
            }
        }
    }
}

struct Title: View {
    var body: some View {
        Text("List").fontWeight(.bold).frame(width: 130, height: 22, alignment: .center).padding(60)
    }
}

struct Content: View {
    var body: some View {
     
            HStack{
                Text("Google")
                Spacer()
                Image("link")
            }.padding(20)
        Divider()
            HStack {
                Text("nFactorial School")
                Spacer()
                Image("link")
            }.padding(20)
            Divider()
            HStack {
                Text("NY Times")
                Spacer()
                Image("link")
            }.padding(20)
        Divider()
            HStack {
                Text("Bloomberg")
                Spacer()
                Image("link")
            }.padding(20)
        Divider()
    }
}

struct AddBookmarkButton: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                RoundedRectangle(cornerRadius: 16).fill(.black).frame(width: 358, height: 58, alignment: .bottom)
                Text("Add bookmark").foregroundColor(.white)
                
            }
        }
    }
}
struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
