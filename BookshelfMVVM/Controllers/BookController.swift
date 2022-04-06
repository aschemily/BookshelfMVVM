//
//  BookController.swift
//  BookshelfMVVM
//
//  Created by Emily Asch on 4/6/22.
//

import Foundation


class BookController{
    
   static var books: [Book]{
        let harryPotter = Book(title: "harry potter", author: "JK Rowling", yearReleased: 1994)
        let starWars = Book(title: "star wars", author: "George Lucas", yearReleased: 2000)
        let theLorax = Book(title: "Lorax", author: "Dr.Seuss", yearReleased: 1990)
        let twilight = Book(title: "twilight", author: "Stephanie Meyere", yearReleased: 2002)
        let theGiver = Book(title: "giver", author: "Lois Lowry", yearReleased: 1993)
        let mazeRunner = Book(title: "maze runner", author: "James Dashner", yearReleased: 2010)
    
    
    return [harryPotter, starWars, theLorax, twilight, theGiver, mazeRunner]
    }
}
