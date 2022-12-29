//
//  ChatsView.swift
//  WhatsApp Messenger
//
//  Created by Anshumali Karna on 28/12/22.
//

import SwiftUI

struct ChatsView: View {
    @EnvironmentObject var chatsData : ChatViewModel
    var body: some View {
        
        VStack {
           
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "square.and.pencil")
                        .font(.title2)
                        .foregroundColor(.accentColor)
                    
                }
                .buttonStyle(.plain)

            }
            .padding()
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Search....", text: $chatsData.search)
                    .textFieldStyle(.plain)
            }
            .padding(.vertical,9)
            .padding(.horizontal)
            .background(Color.primary.opacity(0.15))
            .cornerRadius(10)
            .padding()
            List(selection: $chatsData.selectedRecentMessage)
            {
                ForEach(chatsData.msg) { message in
                    NavigationLink {
                        Conversation(user: message)
                    }
                    
                label: {
                        ChatCards(recentMessage: message)
                    }
                }
            }
            .listStyle(.sidebar)
            
        }
        }
        
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}
