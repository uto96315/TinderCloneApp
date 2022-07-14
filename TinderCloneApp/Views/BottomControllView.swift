//
//  TopControllView.swift
//  TinderCloneApp
//
//  Created by 間部雄斗 on 2022/07/14.
//

import SwiftUI

struct BottomControllView: View {
    
    enum SelectedMenu {
        case top, likedPeople, messages, profile
    }
    
    @State var selectedMenu: SelectedMenu = .top
    
    private var frameWidth: CGFloat = UIScreen.main.bounds.width
    private var frameHeight: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        HStack (spacing: 40) {
            // Top
            BottomMenuButton(
                imageName: "fire",
                imageSize: 40,
                iconColor: (selectedMenu == .top ? .pink : .gray),
                select: selectedMenu = .top
            )
            // likedPeople
            BottomMenuButton(
                imageName: "liked",
                imageSize: 40,
                iconColor: (selectedMenu == .likedPeople ? .yellow : .gray),
                select: selectedMenu = .likedPeople
            )
            // likedPeople
            BottomMenuButton(
                imageName: "message",
                imageSize: 40,
                iconColor: (selectedMenu == .messages ? .pink : .gray),
                select: selectedMenu = .messages
            )
            // likedPeople
            BottomMenuButton(
                imageName: "profile",
                imageSize: 40,
                iconColor: (selectedMenu == .profile ? .pink : .gray),
                select: selectedMenu = .profile
            )
        }
        .frame(width: frameWidth, height: frameHeight * 0.1)
        .padding(.bottom, 30)
        .padding(.top, 20)
    }
}

struct BottomMenuButton: View {
    
    var imageName: String
    var imageSize: CGFloat
    var iconColor: Color
    var select: Any
    
    var body: some View {
        Button {
            //
        } label: {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
                .foregroundColor(iconColor)
        }
    }
}


