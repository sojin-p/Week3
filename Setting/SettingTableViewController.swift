//
//  SettingTableViewController.swift
//  Week3
//
//  Created by 박소진 on 2023/07/27.
//

import UIKit

class SettingTableViewController: UITableViewController {
    
    let settingCellList = [
        ["공지사항", "실험실", "버전 정보"],
        ["개인/보안", "알림", "채팅", "멀티프로필"],
        ["고객센터/도움말"]
    ]
    
    let sectionTitleList = ["전체 설정", "개인 설정", "기타"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //섹션 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitleList.count
    }
    
    //섹션 타이틀
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(sectionTitleList[section])"
    }
    
    //cell 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingCellList[section].count
    }
    
    //디자인 및 데이터
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        let section = indexPath.section
        let row = indexPath.row
        
        cell.textLabel?.text = "\(settingCellList[section][row])"
//        cell.textLabel?.text = "\(settingCellList[indexPath.section][indexPath.row])"
        
        return cell
    }
    
    //높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
