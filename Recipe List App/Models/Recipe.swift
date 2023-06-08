//
//  Recipe.swift
//  Recipe List App
//
//  Created by Rakhyun Kim on 6/7/23.
//

import Foundation


//Identifiable : In order for instances of recipe to b shwn in the list
//Decodable : to use json files
//write down every instance from json
class Recipe: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
}
