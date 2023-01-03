//
//  APIURLs.swift
//  Movie App
//
//  Created by Ali Görkem Aksöz on 2.01.2023.
//

import Foundation

enum APIURLs {
    static func movies(page: Int) -> String {
        "https://api.themoviedb.org/3/movie/popular?api_key=1f4cd44a27f52e7c527fa1a39efc8c2d&language=en-US&page=\(page)"
    }
    
    static func imageURL(posterPath: String) -> String {
        "https://image.tmdb.org/t/p/w500\(posterPath)"
    }
    
    static func detail(id: Int) -> String {
        "https://api.themoviedb.org/3/movie/\(id)?api_key=1f4cd44a27f52e7c527fa1a39efc8c2d&language=en-US"
    }
}
