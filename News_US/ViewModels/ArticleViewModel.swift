//
//  ArticleViewModel.swift
//  News_US
//
//  Created by aditya sharma on 02/09/24.
//

import Foundation

struct ArticleListViewModel {
    let articles : [Article]
}

extension ArticleListViewModel {
    var numberOfSection: Int {
        return 1
    }
    func  numberOfRowInSection(_ section: Int) ->  Int {
        return self.articles.count
    }
    
    func  articleAtIndex(_ index: Int) ->  ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}


struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}
extension ArticleViewModel {
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description ?? ""
    }
    var url: String {
        return self.article.url
    }
}
