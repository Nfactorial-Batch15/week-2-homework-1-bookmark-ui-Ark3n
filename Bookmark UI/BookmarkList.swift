//
//  BookmarkList.swift
//  Bookmark UI
//
//  Created by Arken Sarsenov on 08.12.2021.
//

import SwiftUI

struct BookmarkList: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.white.edgesIgnoringSafeArea(.all)
           VStack {
            BookMarkText()
            Spacer()
            BookMarkMainText()
            Spacer()
            BookMarkButton()
        }
        
    }
}
}
struct BookMarkText: View {
    var body: some View {
        Text("Book mark app").font(.system(size: 17))
    }
}

struct BookMarkMainText: View {
    var body: some View {
        Text("Save you first bookmark").font(.system(size: 36, weight: .bold)).multilineTextAlignment(.center).frame(width: 358, height: 92, alignment: .center)
    }
}

struct BookMarkButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            ZStack {
                RoundedRectangle(cornerRadius: 16).fill(Color.black).frame(width: 358, height: 58, alignment: .center)
                Text("Add bookmark").font(.system(size:16)).frame(width: 320, height: 22, alignment: .center).foregroundColor(.white)
            
        }
        }

    }
}

struct BookmarkList_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkList()
    }
}
