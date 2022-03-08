//
//  RecipeSaverApp.swift
//  RecipeSaver
//
//  Created by Seungchul Ha on 3/7/22.
//

import SwiftUI

@main
struct RecipeSaverApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
