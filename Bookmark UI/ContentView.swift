//
//  ContentView.swift
//  Bookmark UI
//
//  Created by Arken Sarsenov on 08.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .top) {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                BGImage()
                WelcomeMessage()
                WelcomeButton()
                
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct BGImage: View {
    var body: some View {
        Image("welcomeImage").frame(width: 390, height: 614, alignment: .center).edgesIgnoringSafeArea(.all)
    }
}

struct WelcomeMessage: View {
    var body: some View {
        Text("Save all interesting link in one app").font(.system(size:  36, weight: .bold)).frame(width: 358, height: 92, alignment: .topLeading).foregroundColor(.white)
    }
}

struct WelcomeButton: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            ZStack {
                RoundedRectangle(cornerRadius: 16).fill(Color.white).frame(width: 358, height: 58, alignment: .center)
                Text("Let's start collecting").font(.system(size:16)).frame(width: 320, height: 22, alignment: .center).foregroundColor(.black)
            
            }.padding()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
