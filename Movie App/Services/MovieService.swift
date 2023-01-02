//
//  MovieService.swift
//  Movie App
//
//  Created by Ali Görkem Aksöz on 2.01.2023.
//

import Foundation

class MovieService {
    
    func downloadMovies(completion: @escaping ([MovieResult]?) -> ())  {
        guard let
                url = URL(string: APIURLs.movies(page: 1))
        else {return}
        NetworkManager.shared.download(url: url) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let data):
                 completion(self.handleWithData(data))
            case .failure(let error):
                self.handleWithError(error)
            }
        }
    }
    
    private func handleWithError(_ error: Error) {
        print(error.localizedDescription)
    }
    
    private func handleWithData(_ data: Data) -> [MovieResult]? {
        do {
            let movie = try JSONDecoder().decode(Movie.self, from: data)
            return movie.results
            
            
        } catch  {
            print(error.localizedDescription)
            return nil
        }
    }
}
