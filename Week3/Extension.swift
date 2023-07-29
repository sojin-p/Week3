//
//  Extension.swift
//  Week3
//
//  Created by 박소진 on 2023/07/27.
//

import UIKit

//두 화면에 같은 얼럿창을 띄우고싶다
//디자인, 얼럿, 백그라운드 등등을 많이 묶는다!
extension UITableViewController { //확장하고 싶은 컨트롤러에 추가로 쓸수있다는 의미
    
    func showAlert(title: String) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: "확인", style: .cancel)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}


extension UILabel { //uilabel을 사용하는 어느 곳이든 이 함수 쓸 수 있다. - 투두테이블뷰컨에서 씀
    func configureText(title: String, color: UIColor, font: UIFont) {
        self.text = title
        self.textColor = color
        self.font = font
    }
}

extension UIButton {
    func configButton(title: String, color: UIColor, backColor: UIColor, corner: UIButton.Configuration.CornerStyle){
        var config = UIButton.Configuration.filled() //apple system button
        config.title = title
        config.baseForegroundColor = color
        config.baseBackgroundColor = backColor
        config.titleAlignment = .center
        config.cornerStyle = corner
        self.configuration = config
    }
}

extension UITextField {
    func designTextFeild(border: UITextField.BorderStyle , placeholder: String) {
        self.borderStyle = border
        self.placeholder = placeholder
    }
    
    func textFeildPadding(left: Int, rignt: Int) {
        self.leftView = UIView(frame: CGRect(x: 0, y: 0, width: left, height: 0))
        self.rightView = UIView(frame: CGRect(x: 0, y: 0, width: rignt, height: 0))
        self.leftViewMode = .always
        self.rightViewMode = .always
    }
}
