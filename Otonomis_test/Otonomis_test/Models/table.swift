//
//  table.swift
//  Otonomis_test
//
//  Created by Danny Bokati on 2/19/18.
//  Copyright © 2018 Gtech Developeres. All rights reserved.
//

import Foundation

struct table {
    
    private(set) public var title: String!
    private(set) public var viewers: String!
    private(set) public var imageTitle: String!
    
    init(title: String, viewers: String, imageTitle: String) {
        self.title = title
        self.viewers = viewers
        self.imageTitle = imageTitle
    }
    
    
}
