//
//  Article.swift
//  News_US
//
//  Created by aditya sharma on 02/09/24.
//

import Foundation
 
struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String? // Make description optional
    let url: String
    
}

 

