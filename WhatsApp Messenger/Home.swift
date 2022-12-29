//
//  Home.swift
//  WhatsApp Messenger
//
//  Created by Anshumali Karna on 28/12/22.
//

import SwiftUI

var screen = NSScreen.main!.visibleFrame
struct Home: View {
    @StateObject var chatData = ChatViewModel()
    var body: some View {
        HStack(spacing: 0) {
            VStack {
                TabButton(image: "message", title: "Chats", selectedTab: $chatData.selectedTab)
                TabButton(image: "circle.dashed.inset.filled", title: "Status", selectedTab: $chatData.selectedTab)
                TabButton(image: "person.3", title: "Community", selectedTab: $chatData.selectedTab)
                
                Spacer()
                
                TabButton(image: "gear", title: "Settings", selectedTab: $chatData.selectedTab)
            }
            .padding()
            .padding(.top, 35)
            .background(BlurView())
            
            ZStack {
                switch chatData.selectedTab {
                case "Chats": NavigationView {
                    ChatsView()
                }
                .navigationTitle("Chats")
                

                case "Status": StatusView()
                case "Community": CommunityView()
                case "Settings": SettingsView()
                default:
                    Text("Default")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
            .ignoresSafeArea(.all, edges: .all)
            .frame(width: screen.width / 1.2, height: screen.height - 60)
            .environmentObject(chatData)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


#if os(macOS)
extension View {
    func navigationBarTitle(_ title: Text) -> some View {
        return self
    }
}
#endif
