//
//  TodoTableViewController.swift
//  Week3
//
//  Created by 박소진 on 2023/07/27.
//

import UIKit

class TodoTableViewController: UITableViewController {
    
    var list = ["장보기", "로션챙기기", "잠자기", "코드보기", "과제하기", "머리하기", "쉬기", "놀기", "먹기"]
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func addButtonClicked(_ sender: UIBarButtonItem) {
        
//        showAlert()
        
        //1. list에 요소 추가
        list.append("고래밥 먹기")
        print(list)
        
        //2. 테이블 뷰 갱신
        tableView.reloadData()//테이블 뷰 다시 불러주세요
        
    }
    
    
    //테이블뷰 필수 구현 메서드
    //1. section내 cell 갯수 - 부르는 키워드 nu : 카톡 친구 수만큼 셀 갯수가 필요해 라고 iOS에게 전달(그만큼 만들 준비를 한다)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return list.count

    }
    
    //2. cell 디자인 및 데이터 처리 - 키워드 cell : 카톡 프로필 모서리 둥글게, 프로필 이미지와 상태 메세지 반영 등 내용 갈아 끼우기
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //dequeueReusableCell: 셀을 복붙 형태로 쓸거야(재사용 메커니즘)
        //withIdentifier: 셀 마다 붙인 이름 - 스토리보드 인스펙터에서 작성 / 오 타 주 의
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell")!
        
        //나머지가 0이면 라이트그레이, 1이면(홀수면) 화이트
        cell.backgroundColor = indexPath.row % 2 == 0 ? .lightGray : .white
        
        //(3)밑과 같은 코드
//        cell.textLabel?.text = list[indexPath.row]
        cell.textLabel?.configureText(title: list[indexPath.row], color: .blue, font: .boldSystemFont(ofSize: 20))
        
//        //인덱스 패스 [섹션,셀(로우)]
//        if indexPath.row == 0 {
//            cell.textLabel?.text = list[0] //(1)"텍스트"를 list[0]로 수정해봄
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = list[indexPath.row] //(2)인덱스를 수정해보기 그럼 조건문 필요없지~!
//        } else if indexPath.row == 2 {
//            cell.textLabel?.text = list[2]
//        } else { //떨이 처리 첫번째거 재사용하는걸,, 없애야..
//            cell.textLabel?.text = list[3]
//        }
        
        
        cell.textLabel?.textColor = .green
        cell.textLabel?.font = .boldSystemFont(ofSize: 20)
        
        cell.detailTextLabel?.text = "디테일 텍스트"
        cell.detailTextLabel?.textColor = .cyan
        cell.detailTextLabel?.font = .systemFont(ofSize: 15)
        
        cell.imageView?.image = UIImage(systemName: "star.fill")
        
        print(#function, indexPath)
        return cell
        
    }
    
    //3. cell 높이- 키워드 he : 지정 안 하면 디폴트 높이(44-설정 높이)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }


}
