//
//  BookListTableViewController.swift
//  BookshelfMVVM
//
//  Created by Emily Asch on 4/6/22.
//

import UIKit

class BookListTableViewController: UITableViewController {
    
    var bookViewModel = [BookViewModel]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
    }
   
    func fetchData(){
        self.bookViewModel = BookController.books.map{book in
            BookViewModel(book: book)
          //  print("book is", book.author)
        }
        self.tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return bookViewModel.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! BookTableViewCell

        let bookViewModel = bookViewModel[indexPath.row]
        cell.book = bookViewModel
        print("book view model", bookViewModel)
        return cell
    }


//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//    }
    

}
