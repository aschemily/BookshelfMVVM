//
//  BookListTableViewController.swift
//  BookshelfMVVM
//
//  Created by Emily Asch on 4/6/22.
//

import UIKit

class BookListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return BookController.books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! BookTableViewCell

        let book = BookController.books[indexPath.row]
        
       
        cell.book = book
        
        return cell
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
    }
    

}
