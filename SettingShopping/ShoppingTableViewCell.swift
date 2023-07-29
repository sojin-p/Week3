//
//  ShoppingTableViewCell.swift
//  Week3
//
//  Created by 박소진 on 2023/07/29.
//

import UIKit

class ShoppingTableViewCell: UITableViewCell {
    
    static let identifier = "ShoppingTableViewCell"

    @IBOutlet var checkImageView: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var bookMarkButton: UIButton!
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        //클릭하면 이미지 변경, 값은 어떻게...
        sender.isSelected = !sender.isSelected
//        print(!sender.isSelected)
        
        if sender.isSelected {
            sender.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            sender.setImage(UIImage(systemName: "star"), for: .normal)
        }
    
    }
    
    func configureCell(row: ShoppingToDo) {
        resultLabel.text = row.title
        bookMarkButton.setTitle("", for: .normal)
        
        if row.bookMark {
            bookMarkButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            bookMarkButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
        if row.done {
            checkImageView.image = UIImage(systemName: "checkmark.square")
        } else {
            checkImageView.image = UIImage(systemName: "square")
        }
    }
    
    
}
