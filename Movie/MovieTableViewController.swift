//
//  MovieTableViewController.swift
//  Week3
//
//  Created by 박소진 on 2023/07/29.
//

import UIKit

class MovieTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //셀 디자인 및 데이터
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
        
        cell.titleLabel.text = "영화제목"
        cell.rateLabel.text = "1234.12.12."
        cell.runtimeLabel.text = "123분"
        cell.rateLabel.text = "1.23점"
        cell.overviewLabel.text = "줄거리"
        
        return cell
    }
    

}
