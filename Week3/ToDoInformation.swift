//
//  ToDoInformation.swift
//  Week3
//
//  Created by 박소진 on 2023/07/28.
//

import Foundation

//식판의 반환 값 담는 통!
struct ToDoInformation {
    
    //배열에 클래스나 구조체가 들어갈 수 있다!(식판)
    let list = [ToDo(main: "빨래하기", sub: "오늘까지", like: false, done: false),
                 ToDo(main: "곱창먹기", sub: "내일까지", like: true, done: false),
                 ToDo(main: "잠자기", sub: "집에 도착하자마자", like: true, done: false),
                 ToDo(main: "생명주기 공부", sub: "주말까지", like: false, done: false)]
    
}
