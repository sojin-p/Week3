//
//  CustomTableViewCell.swift
//  Week3
//
//  Created by 박소진 on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomTableViewCell"
    
    @IBOutlet var backView: UIView!
    @IBOutlet var checkboxImageView: UIImageView!
    @IBOutlet var mainTitleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    func configureCell(row: ToDo) {
        mainTitleLabel.text = row.main //갯수 4개 중에 뭔데
        subTitleLabel.text = row.sub
        
        if row.done {
            checkboxImageView.image = UIImage(systemName: "checkmark.square.fill")
        } else {
            checkboxImageView.image = UIImage(systemName: "checkmark.square")
        }
        
        if row.like {
            likeButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            likeButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
    }
    
}
