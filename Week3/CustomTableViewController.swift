//
//  CustomTableViewController.swift
//  Week3
//
//  Created by 박소진 on 2023/07/28.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    let todo = ToDoInformation()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80 //항상 똑같은 셀 높이면 함수 호출 안 해도 됨
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //as로 타입캐스팅(플레이그라운드에 있음)해서 CustomTableViewCell에 있는 아울렛들 가져오기
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell //static(cell 파일에 있음)으로 오타 줄이기
        let row = todo.list[indexPath.row]
        
        cell.configureCell(row: row)
        
        return cell
    }
    
    //3. 셀 선택했다 - 키워드 didse
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    
}
