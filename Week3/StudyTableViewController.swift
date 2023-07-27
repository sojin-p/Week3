//
//  StudyTableViewController.swift
//  Week3
//
//  Created by 박소진 on 2023/07/27.
//

import UIKit

class StudyTableViewController: UITableViewController {

    let studyList = ["변수", "배열", "열거형", "클래스", "인스턴스", "조건문 내용이 같으면 그 줄 내용만 살리면 됨 - 조건문이 필요없다"]
    let appleList = ["아이폰", "아이패드", "맥북", "아이맥", "애플워치"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 60 //(모든 셀 높이가 같다면 3번째 함수대신 이거하나쓰면됨)

    }
    
    //1-1. section 갯수 지정
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "1번째 섹션" : "2번째 섹션"//0번째에 해당하니 ? "ㅇㅇ" : "ㄴㄴ"
    }
    
    
    //1. cell 갯수(필수)
    //numberOfRowsInSection: 섹션 하나 당 갯수임
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? studyList.count : appleList.count //섹션이 0번째면 ? ㅇㅇ : ㄴㄴ일때
    }
    
    
    //2. cell 디자인 & 데이터 처리(필수) - 키워드 cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //tableView먼저 쓸 생각하기
        //identifier가 없는 cell이 있을 수 있기 때문에 옵셔널로 반활을 해줌 -> 해제 필요!
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell")!
        
        //2-3. 섹션마다 셀 텍스트 다르게 뿌리기
        if indexPath.section == 0 { //section 좌표
            cell.textLabel?.text = studyList[indexPath.row] //텍스트레이블이 있을수도없을수도있어서
        } else {
            cell.textLabel?.text = appleList[indexPath.row]
        }
        
//        2-1. cell.textLabel?.text = "\(indexPath)위치에 있는 셀입니다."
//        2-2. cell.textLabel?.text = studyList[indexPath.row]
        
        return cell
    }
    
    //3. cell 높이: 서비스 구현에 따라 필요한 경우가 많지만, 항상 같은 높이를 셀에서 적용한다면 비효율적일 수 있음!
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        if indexPath.row == 0 {
            return 100
        } else {
            return 50
        }

    }

}
