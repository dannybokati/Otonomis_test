//
//  dataServices.swift
//  Otonomis_test
//
//  Created by Danny Bokati on 2/19/18.
//  Copyright © 2018 Gtech Developeres. All rights reserved.
//

import Foundation
class dataService{
    static let instance = dataService()
    
    private let categories = [Category(title: "Characters", imageTitle: "characters.png"), Category(title: "Series", imageTitle: "series.png"), Category(title: "Events", imageTitle: "events.png"), Category(title: "Comics", imageTitle: "Comics.png")]


    private let characters = [table(title: "Iron Man", viewers: "30", imageTitle: "01.png"),
                          table(title: "Hulk", viewers: "30", imageTitle: "02.png"),
                          table(title: "Thor", viewers: "30", imageTitle: "03.png"),
                          table(title: "Captian America", viewers: "30", imageTitle: "04.png"),
                          table(title: "Black Panther", viewers: "30", imageTitle: "05.png")]
    
    private let series = [table(title: "The first", viewers: "20", imageTitle: "t01.png"),
                        table(title: "The second", viewers: "20", imageTitle: "t02.png"),
                        table(title: "The third", viewers: "20", imageTitle: "t03.png"),
                        table(title: "The fourth", viewers: "20", imageTitle: "t04.png")]
    
    private let events = [table(title: "The first", viewers: "30", imageTitle: "e01.png"),
                           table(title: "The second", viewers: "30", imageTitle: "e02.png"),
                           table(title: "The third", viewers: "30", imageTitle: "e03.png"),
                           table(title: "The fourth", viewers: "30", imageTitle: "e04.png")]
    
    private let comics = [table]()

    func getProducts(selectedCategory: String) -> [table] {
        switch selectedCategory {
        case "Character":
            return characters
        case "Series":
            return series
        case "Events":
            return events
        case "Comics":
            return comics
        default:
            return characters
        }
        
        func getCategories() -> [Category] {
            return categories
            
        }
        
    

}
