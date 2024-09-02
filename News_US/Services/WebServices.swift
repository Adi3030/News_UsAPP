//
//  WebServices.swift
//  News_US
//
//  Created by aditya sharma on 02/09/24.
//

import Foundation

class Webservice {

    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print("My data in bytes ", data)
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                
                print(articleList?.articles ?? [])
            }
        }.resume()
    }
}
