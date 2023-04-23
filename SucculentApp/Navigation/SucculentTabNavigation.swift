//
//  SucculentTabNavigation.swift
//  SucculentApp
//
//  Created by Alek Michelson on 4/23/23.
//

import SwiftUI

struct SucculentTabNavigation: View {
    
    enum Tab {
        case list
        case profile
    }
    
    @State private var selection: Tab = .list
    
    var body: some View {
        TabView(selection: $selection) {
            
            // List
            NavigationView {
                ListView()
            }
            .tabItem {
                let listText = Text("List")
                Label {
                    listText
                } icon: {
                    Image(systemName: "list.bullet")
                }.accessibility(label: listText)
            }
            .tag(Tab.list)
            
            // Profile
            NavigationView {
                ProfileView()
            }
            .tabItem {
                let listText = Text("Profile")
                Label {
                    listText
                } icon: {
                    Image(systemName: "person.fill")
                }.accessibility(label: listText)
            }
            .tag(Tab.list)
        }
    }
}
