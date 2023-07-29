//
//  MovieTableViewCell.swift
//  Week3
//
//  Created by 박소진 on 2023/07/29.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    static let identifier = "MovieTableViewCell"

    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var runtimeLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    @IBOutlet var overviewLabel: UILabel!
    
    func configureCell(row: Movie) {
        titleLabel.configureText(title: row.mainTitle, color: .black, font: .boldSystemFont(ofSize: 18))
        dateLabel.configureText(title: row.releaseDate, color: .darkGray, font: .systemFont(ofSize: 16))
        runtimeLabel.configureText(title: "\(row.runtime)분", color: .darkGray, font: .systemFont(ofSize: 16))
        rateLabel.configureText(title: "\(row.rate)점", color: .darkGray, font: .systemFont(ofSize: 16))
        overviewLabel.configureText(title: row.overview, color: .black, font: .systemFont(ofSize: 13))
        posterImageView.image = UIImage(named: row.mainTitle)
    }
    
}
