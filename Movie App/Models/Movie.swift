//
//  Movie.swift
//  Movie App
//
//  Created by Ali Görkem Aksöz on 2.01.2023.
//

import Foundation

struct Movie: Decodable {
    let results: [MovieResult]?
    
}

struct MovieResult: Decodable {
    let id: Int?
    let posterPath: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case posterPath = "poster_path"
    }
    
    var _id: Int {
        id ?? Int.min
    }
    
    var _posterPath: String {
        posterPath ?? ""
    }
}
