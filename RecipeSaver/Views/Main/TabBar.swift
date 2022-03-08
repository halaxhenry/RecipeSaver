//
//  TabBar.swift
//  RecipeSaver
//
//  Created by Seungchul Ha on 3/7/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            NewRecipeView()
                .tabItem {
                    Label("New", systemImage: "plus")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Home", systemImage: "heart")
                }
            
            SettingsView()
                .tabItem {
                    Label("Home", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
