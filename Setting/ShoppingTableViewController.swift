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

    }
    
    @IBAction func addButtonClicked(_ sender: UIButton) {
        //텍스트 필드 글자가 셀에 반영
        guard let text = inputTextField.text, text.count > 0 else {
            showAlert()
            return
        }
        
        shoppingTodoList.append(text)
        
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingTodoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shoppingCell")!
        cell.textLabel?.text = shoppingTodoList[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }

}
