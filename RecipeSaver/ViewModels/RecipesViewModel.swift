//
//  RecipesViewModel.swift
//  RecipeSaver
//
//  Created by Seungchul Ha on 3/8/22.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
