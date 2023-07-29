//
//  MovieTableViewCell.swift
//  Week3
//
//  Created by 박소진 on 2023/07/29.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var runtimeLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    @IBOutlet var overviewLabel: UILabel!
    
    func configreCell(row: Movie) {
        titleLabel.text = row.mainTitle
        dateLabel.text = row.releaseDate
        runtimeLabel.text = "\(row.runtime)분"
        rateLabel.text = "\(row.rate)점"
        overviewLabel.text = row.overview
        posterImageView.image = UIImage(named: row.mainTitle)
    }
    
}
