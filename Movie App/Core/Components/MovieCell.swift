//
//  MovieCell.swift
//  Movie App
//
//  Created by Ali Görkem Aksöz on 2.01.2023.
//

import UIKit

class MovieCell: UICollectionViewCell {
    static let reuseID = "MovieCell"
    
    private var posterImageView: PosterImageView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureCell()
        configurePosterImageView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setCell(movie: MovieResult) {
        posterImageView.downloadImage(movie: movie)
    }
    
    private func configureCell() {
        backgroundColor = .systemGray5
        layer.cornerRadius = 16
        clipsToBounds = true
    }
    
    private func configurePosterImageView() {
        posterImageView = PosterImageView(frame: .zero)
        addSubview(posterImageView)
        
        
        posterImageView.backgroundColor = .red
        
        posterImageView.pinToEdgesOf(view: self)
    }
}
