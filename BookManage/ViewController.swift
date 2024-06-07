//
//  ViewController.swift
//  BookManage
//
//  Created by 박건희 on 2024/06/07.
//

import UIKit

class ViewController: UIViewController {
    
    var BookList:BookManager = BookManager()
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var genreTextField: UITextField!
    @IBOutlet var authorTextField: UITextField!
    @IBOutlet var bookTextView: UITextView!
    @IBOutlet var bookCount: UILabel!
    
    
    @IBAction func addBookAction(){
        let tempBook: Book = Book()
        tempBook.name = nameTextField.text!
        tempBook.genre = genreTextField.text!
        tempBook.author = authorTextField.text!
        
        BookList.addBook(book: tempBook)
        
        bookTextView.text = "\(nameTextField.text!) 책이 추가되었습니다"
        bookCount.text = "\(BookList.countBook())"
    }
    
    @IBAction func searchBookAction(){
        if BookList.searchBook(name: nameTextField.text!){
            bookTextView.text = "\(nameTextField.text!) 책이 검색되었습니다"
        }else{
            bookTextView.text = "검색된 책이 없습니다"
        }
    }
    
    @IBAction func removeBookAction(){
        if BookList.deleteBook(name: nameTextField.text!){
            bookTextView.text = "\(nameTextField.text!) 책이 삭제되었습니다"
        }else{
            bookTextView.text = "오류가 발생했습니다. 다시 시도해주세요"
        }
        bookCount.text = "\(BookList.countBook())"
    }
    
    @IBAction func showAllBookAction(){
        bookTextView.text = BookList.showAllBook()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book1:Book = Book()
        book1.name = "오만과 편견"
        book1.genre = "고전"
        book1.author = "제인 오스틴"
        
        BookList.addBook(book: book1)
        
        let book2:Book = Book()
        book2.name = "앵무새 죽이기"
        book2.genre = "소설"
        book2.author = "하퍼리"
        
        BookList.addBook(book: book2)
        
        let book3:Book = Book()
        book3.name = "전쟁과 평화"
        book3.genre = "고전"
        book3.author = "톨스토이"
        
        BookList.addBook(book: book3)
        
        bookCount.text = "\(BookList.countBook())"
        
    }


}

