//
//  BookTableViewCell.swift
//  BookshelfMVVM
//
//  Created by Emily Asch on 4/6/22.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var yearReleasedLabel: UILabel!
    
    
    var book: BookViewModel!{
        didSet{
            print("book in cell is", book.title)
            titleLabel.text = book.title
            authorLabel.text = book.author
            yearReleasedLabel.text = book.yearReleased
            
        }
       
    }


}
