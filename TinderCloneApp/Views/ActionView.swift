//
//  ActionView.swift
//  TinderCloneApp
//
//  Created by 間部雄斗 on 2022/07/14.
//

import SwiftUI

struct ActionView: View {
    
    private var frameWidth: CGFloat = UIScreen.main.bounds.width
    private var frameHeight: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        
        HStack (spacing: 20) {
            ActionButtons(imageName: "reload", imageSize: 30, iconColor: .gray, bgSize: 50)
            ActionButtons(imageName: "dont", imageSize: 30, iconColor: .red, bgSize: 60)
            ActionButtons(imageName: "superlike", imageSize: 30, iconColor: .mint, bgSize: 50)
            ActionButtons(imageName: "heart", imageSize: 30, iconColor: .green, bgSize: 60)
            ActionButtons(imageName: "boost", imageSize: 30, iconColor: .purple, bgSize: 50)
        }
        .frame(width: frameWidth, height: frameHeight * 0.1)
    }
}


struct ActionButtons: View {
    
    var imageName: String
    var imageSize: CGFloat
    var iconColor: Color
    var bgSize: CGFloat
    
    var body: some View {
        ZStack {
            
            Color.white
                .frame(width: bgSize, height: bgSize)
                .cornerRadius(bgSize)
                .shadow(radius: 10)
            
            
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
        .overlay(
            RoundedRectangle(cornerRadius: bgSize)
                .stroke(iconColor, lineWidth: 1)
        )
    }
}

