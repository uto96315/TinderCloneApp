//
//  ContentView.swift
//  TinderCloneApp
//
//  Created by 間部雄斗 on 2022/07/13.
//

import SwiftUI

struct ContentView: View {
    
    enum SelectedAction {
        case none, reload, bad, superlike, like, boost
    }
    enum SelectedMenu {
        case top, likedPeople, messages, profile
    }
    
    @State var selectedAction: SelectedAction = .none
    @State var selectedMenu: SelectedMenu = .top
    
    private var frameWidth: CGFloat = UIScreen.main.bounds.width
    private var frameHeight: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        VStack {
            // header
            Text("header")
                .frame(width: frameWidth, height: frameHeight * 0.1)
                .background(Color.blue)
            
            // main
            Text("main")
                .frame(width: frameWidth, height: frameHeight * 0.7)
                .background(Color.gray)
            
            // footer
            HStack (spacing: 40) {
                // Top
                BottomMenuButton(
                    imageName: "fire",
                    imageSize: 50,
                    iconColor: (selectedMenu == .top ? .pink : .gray)
                )
                // likedPeople
                BottomMenuButton(
                    imageName: "liked",
                    imageSize: 50,
                    iconColor: (selectedMenu == .likedPeople ? .yellow : .gray)
                )
                // likedPeople
                BottomMenuButton(
                    imageName: "message",
                    imageSize: 50,
                    iconColor: (selectedMenu == .messages ? .pink : .gray)
                )
                // likedPeople
                BottomMenuButton(
                    imageName: "profile",
                    imageSize: 50,
                    iconColor: (selectedMenu == .profile ? .pink : .gray)
                )
            }
            .frame(width: frameWidth, height: frameHeight * 0.07)
        }
    }
}

struct BottomMenuButton: View {
    
    var imageName: String
    var imageSize: CGFloat
    var iconColor: Color
    
    var body: some View {
        Button {
            
        } label: {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
                .foregroundColor(iconColor)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
