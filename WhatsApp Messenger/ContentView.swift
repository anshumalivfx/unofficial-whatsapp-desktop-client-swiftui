//
//  ContentView.swift
//  WhatsApp Messenger
//
//  Created by Anshumali Karna on 28/12/22.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var viewSwitcher = ViewSwitcher()

    
    var body: some View {
        GeometryReader { geometryReader in
            HStack {
                
                VStack(alignment: .leading, spacing: 10) {
                    Button {
                        
                    } label: {
                        Image(systemName: "message")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(10)
                            .onTapGesture {
                                self.viewSwitcher.currentView = "statusView"
                            }
                    }
                    .tint(.primary)

                    
                    
                    Image(systemName: "circle.dashed")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                        .onTapGesture {
                            self.viewSwitcher.currentView = "statusView"
                        }

                    
                    Image(systemName: "person.3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                        .onTapGesture {
                            self.viewSwitcher.currentView = "communityView"
                        }
                    
                    Image(systemName: "gear")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                        .onTapGesture {
                            self.viewSwitcher.currentView = "settingsView"
                        }
                    Spacer()
                }
                .frame(width: 40)
                
                Divider()
                
                if self.viewSwitcher.currentView == "chatView" {
                    ChatsView()
                } else if self.viewSwitcher.currentView == "statusView" {
                    StatusView()
                } else if self.viewSwitcher.currentView == "communityView" {
                    CommunityView()
                } else if self.viewSwitcher.currentView == "settingsView" {
                    SettingsView()
                }
                
                Spacer(minLength: 10)
            }.padding(.horizontal, 10)
        }
        .frame(minWidth: 600, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

