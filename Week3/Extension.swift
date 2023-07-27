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
    
    func showAlert() {
        let alert = UIAlertController(title: "오류", message: "상세메세지", preferredStyle: .alert)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}


extension UILabel { //uilabel을 사용하는 어느 곳이든 이 함수 쓸 수 있다. - 투두테이블뷰컨에서 씀
    func configureTitleText() {
        self.textColor = .red
        self.font = .boldSystemFont(ofSize: 20)
        self.textAlignment = .center
    }
}
