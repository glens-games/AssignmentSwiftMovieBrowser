//
//  ContentView.swift
//  SwiftMovieBrowser
//
//  Created by Glen Heide on 3/8/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label(Constants.homeString, systemImage: Constants.homeIconString)
                }
            Text(Constants.upcomingString)
                .tabItem {
                    Label(Constants.upcomingString, systemImage: Constants.upcomingIconString)
                }
            Text(Constants.searchString)
                .tabItem {
                    Label(Constants.searchString, systemImage: Constants.searchIconString)
                }
            Text(Constants.downloadString)
                .tabItem {
                    Label(Constants.downloadString, systemImage: Constants.downloadIconString)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
