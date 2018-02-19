//
//  category.swift
//  Otonomis_test
//
//  Created by Danny Bokati on 2/19/18.
//  Copyright © 2018 Gtech Developeres. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageTitle: String
    
    init (title: String, imageTitle: String){
        self.title = title
        self.imageTitle = imageTitle
    }
}
