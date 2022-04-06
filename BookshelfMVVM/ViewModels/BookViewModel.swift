//
//  BookViewModel.swift
//  BookshelfMVVM
//
//  Created by Emily Asch on 4/6/22.
//

import Foundation

class BookViewModel{
    
    let title: String
    let author: String
    let yearReleased: String
    
    init(book: Book){
        self.title = book.title
        self.author = book.author
       // print("book in book vm", book.title)
        
        if book.yearReleased >= 2000{
            yearReleased = "21st century \(book.yearReleased)"
        }else{
            yearReleased = "90s baby \(book.yearReleased)"
        }
    }
    
}//end of struct
