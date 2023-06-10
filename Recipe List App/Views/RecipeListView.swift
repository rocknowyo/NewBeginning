//
//  ContentView.swift
//  Recipe List App
//
//  Created by Rakhyun Kim on 6/7/23.
//

import SwiftUI

struct RecipeListView: View {
    
    //Reference the view mdoel
    @ObservedObject var model = RecipeModel() //ObservedObject is together with ObservableObject
    
    
    var body: some View {
        List(model.recipes) { r in
            HStack(spacing: 20.0) {
                Image(r.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                    .clipped() // fit into image evethough out size of image
                    .cornerRadius(5)
                Text(r.name)
                
            }
            
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
