//
//  DetailViewModel.swift
//  Movie App
//
//  Created by Ali Görkem Aksöz on 2.01.2023.
//

import Foundation

protocol DetailViewModelInterface {
    var view: DetailScreenInterface? { get set}
    
    func viewDidLoad()
}

final class DetailViewModel {
    weak var view: DetailScreenInterface?
}

extension DetailViewModel: DetailViewModelInterface {
    func viewDidLoad() {
        view?.configureVC()
        view?.configurePosterImageView()
        view?.downloadPosterImageView()
        view?.configureTitleLabel()
        view?.configureDateLabel()
        view?.configureOverviewLabel()
        
    }
    
    
}
