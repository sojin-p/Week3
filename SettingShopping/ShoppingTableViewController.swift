//
//  ShoppingTableViewController.swift
//  Week3
//
//  Created by 박소진 on 2023/07/27.
//

import UIKit

class ShoppingTableViewController: UITableViewController {

    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    
    var shoppingTodoList: [String] = []
    
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
        
        shoppingTodoList.append(text)
        inputTextField.text = ""
        tableView.reloadData()
        
    }

    //MARK: - TableView 관련
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingTodoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCell")!
        cell.textLabel?.text = shoppingTodoList[indexPath.row]
        
        cell.tintColor = .black
        
        return cell
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
