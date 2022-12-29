//
//  ExpandView.swift
//  WhatsApp Messenger
//
//  Created by Anshumali Karna on 29/12/22.
//

import SwiftUI

struct ExpandView: View {
    var user: RecentChats
    var body: some View {
        HStack {
            Divider()
            
            VStack(spacing: 25) {
                Image(user.userImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
                    .padding(.top, 35)
                
                Text(user.userName)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(user.userPhone)
                    .font(.title3)
                    .fontWeight(.light)
                VStack{
                    
                    
                    HStack {
                        Text("About: ")
                            .font(.body)
                            .fontWeight(.regular)
                        Spacer()
                        
                        
                    }
                    Text("No Calls only CrapApp")
                        .font(.caption)
                        .fontWeight(.medium)
                }
                
                
                
                HStack {
                    Button {
                        
                    } label: {
                        
                        VStack {
                            Image(systemName: "bell.slash")
                                .font(.title2)
                            Text("Mute")
                        }
                        
                        
                    }
                    .buttonStyle(.plain)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        
                        VStack {
                            Image(systemName: "bell.slash")
                                .font(.title2)
                            Text("Mute")
                        }
                        
                        
                    }
                    .buttonStyle(.plain)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        
                        VStack {
                            Image(systemName: "bell.slash")
                                .font(.title2)
                            Text("Mute")
                        }
                        
                        
                    }
                    .buttonStyle(.plain)
                    

                }
                
                Spacer()
                
            }.frame(maxWidth: .infinity)
            
        }
    }
}

