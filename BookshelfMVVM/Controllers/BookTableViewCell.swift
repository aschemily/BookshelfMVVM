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
    
    
    var book: Book?{
        didSet{
            titleLabel.text = book?.title
            authorLabel.text = book?.author
       
            if book!.yearReleased >= 2000{
                yearReleasedLabel.text = "21st century \(book!.yearReleased)"
            }else{
                yearReleasedLabel.text = "90's baby \(book!.yearReleased)"
            }
        }
       
    }


}
