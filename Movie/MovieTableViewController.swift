//
//  MovieTableViewController.swift
//  Week3
//
//  Created by 박소진 on 2023/07/29.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    let movieList = MovieInfo()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    //셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.movie.count
    }
    
    //셀 디자인 및 데이터
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
        let row = indexPath.row
        
        cell.titleLabel.text = movieList.movie[row].mainTitle
        cell.dateLabel.text = movieList.movie[row].releaseDate
        cell.runtimeLabel.text = "\(movieList.movie[row].runtime)분"
        cell.rateLabel.text = "\(movieList.movie[row].rate)점"
        cell.overviewLabel.text = movieList.movie[row].overview
        
        return cell
    }
    

}
