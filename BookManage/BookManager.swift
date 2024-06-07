//
//  BookManager.swift
//  BookManage
//
//  Created by 박건희 on 2024/06/07.
//

import Foundation

class BookManager {
    var bookList = [Book]()
    
    func addBook(book: Book){
        bookList.append(book)
    }
    
    func deleteBook(name: String) -> Bool{
        if bookList.contains(where: {$0.name == name}){
            bookList.removeAll(where: {$0.name == name})
            return true
        }
        return false
    }
    
    func showAllBook()->String{
        var allList: String = ""
        for temp in bookList {
            allList += "제목 : \(temp.name)\n"
            allList += "장르 : \(temp.genre)\n"
            allList += "저자 : \(temp.author)\n"
            allList += "=================\n"
        }
        return allList
    }
    
    func countBook()->Int{
        return bookList.count
    }
    
    func searchBook(name: String)->Bool{
        if bookList.contains(where: {$0.name == name}){
            return true
        }
        return false
    }
}
