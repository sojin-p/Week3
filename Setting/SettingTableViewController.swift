//
//  SettingTableViewController.swift
//  Week3
//
//  Created by 박소진 on 2023/07/27.
//

import UIKit

class SettingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //섹션 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    //cell 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    //디자인 및 데이터
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        cell.textLabel?.text = "되나"
        
        return cell
    }
    
    //높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
