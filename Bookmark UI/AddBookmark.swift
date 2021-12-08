//
//  AddBookmark.swift
//  Bookmark UI
//
//  Created by Arken Sarsenov on 08.12.2021.
//

import SwiftUI

struct AddBookmark: View {
    
    var bookMark = ""
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.opacity(0.2)
            VStack {
                BookMarkText()
                Spacer()
                BookMarkMainText()
                Spacer()
                AddBookMarkMenu()
            }
        }.edgesIgnoringSafeArea(.all)
    }
}
struct AddBookMarkMenu: View{
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20).frame(width: .infinity).frame(height: 400).foregroundColor(.white).shadow(radius: 30)
         
            VStack {
                HStack{
                    Spacer()
                    Image("x").padding()
                }
                Text("Tiitle").frame(width: 358, height: 22, alignment: .leading)
                TextField("Bookmark title", text: .constant("")).padding().background(RoundedRectangle(cornerRadius: 16).fill(Color.gray.opacity(0.2))).padding()
                Text("Link").frame(width: 358, height: 22, alignment: .leading)
                TextField("Bookmark link (URL)", text: .constant("")).padding().background(RoundedRectangle(cornerRadius: 16).fill(Color.gray.opacity(0.2))).padding()
                SaveButton()
            }.padding()
        
        }
    }
}

struct SaveButton: View {
    var body: some View {
        Button(action: {}){
            ZStack {
            RoundedRectangle(cornerRadius: 16).fill(Color.black).frame(width: 358, height: 58, alignment: .center)
                Text("Save").foregroundColor(.white)
            }
        }
    }
}


struct AddBookmark_Previews: PreviewProvider {
    static var previews: some View {
        AddBookmark()
    }
}

