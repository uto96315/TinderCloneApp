//
//  ContentView.swift
//  TinderCloneApp
//
//  Created by 間部雄斗 on 2022/07/13.
//

import SwiftUI

struct HomeView: View {
    
    enum SelectedAction {
        case none, reload, bad, superlike, like, boost
    }
    
    
    @State var selectedAction: SelectedAction = .none
    
    
    private var frameWidth: CGFloat = UIScreen.main.bounds.width
    private var frameHeight: CGFloat = UIScreen.main.bounds.height
    
    var body: some View {
        VStack (spacing: 0) {
            
            Text("header")
                .frame(width: frameWidth, height: frameHeight * 0.1)
            
            // main
            ZStack (alignment: .bottom) {
                Text("main")
                    .frame(width: frameWidth - 10, height: frameHeight * 0.7)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
                
                // Actoin Button
                ActionView()
            }
            // footer
            BottomControllView()
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 13 Pro")
    }
}
