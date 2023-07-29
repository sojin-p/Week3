//
//  ShoppingTableViewController.swift
//  Week3
//
//  Created by 박소진 on 2023/07/27.
//

struct ShoppingToDo {
    var title: String
    var done: Bool = false
    var bookMark: Bool = false
}

import UIKit

class ShoppingTableViewController: UITableViewController {

    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    var shoppingTodoList: [ShoppingToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "쇼핑"
        setDesign()
    }
    
    //키보드 엔터 + 추가 버튼 클릭하면
    @IBAction func enterAndAddButtonTapped(_ sender: Any) {
        //텍스트 필드 글자가 셀에 반영
        guard let text = inputTextField.text, text.count > 0 else {
            showAlert(title: "내용을 입력해 주세요.")
            return
        }
        
        shoppingTodoList.append(.init(title: text))
        inputTextField.text = ""
        tableView.reloadData()
        
    }

    //MARK: - TableViewCell
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingTodoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ShoppingTableViewCell.identifier) as! ShoppingTableViewCell
        var row = shoppingTodoList[indexPath.row]
        
        cell.resultLabel.text = row.title
        cell.bookMarkButton.setTitle("", for: .normal)
        
        if row.bookMark {
            cell.bookMarkButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else {
            cell.bookMarkButton.setImage(UIImage(systemName: "star"), for: .normal)
        }
        
        if row.done {
            cell.checkImageView.image = UIImage(systemName: "checkmark.square")
        } else {
            cell.checkImageView.image = UIImage(systemName: "square")
        }
        
        return cell
    }
    
    //셀 선택
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var row = shoppingTodoList[indexPath.row]

        row.done = !row.done

        //다시 넣어주기..
        shoppingTodoList[indexPath.row].done = row.done

        tableView.reloadRows(at: [indexPath], with: .automatic)
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func setDesign() {
        addButton.configButton(title: "추가", color: .black, backColor: .systemYellow, corner: .capsule)
        inputTextField.designTextFeild(border: .none, placeholder: "무엇을 구매하실 건가요?")
        inputTextField.textFeildPadding(left: 8, rignt: 30)
    }

}
