//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Rakhyun Kim on 6/7/23.
//

import Foundation

class RecipeModel: ObservableObject {
 
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
       
        self.recipes = DatatService.getLocalData()
        
       
        
    }
    
}
