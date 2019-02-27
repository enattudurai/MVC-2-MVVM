//
//  CourseTableViewCell.swift
//  MVC2MVVM
//
//  Created by Naattudurai Eswaramurthy on 27/02/19.
//  Copyright © 2019 Naattudurai Eswaramurthy. All rights reserved.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

    var course : Course! {
        didSet{
            textLabel?.text = course.name
            
            if course.number_of_Sessions > 35 {
             
                accessoryType = .detailDisclosureButton
                detailTextLabel?.text = "30+ Lessons, please check out"
            }
            else
            {
                accessoryType = .none
                detailTextLabel?.text = " "
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Setup the Label styles
        textLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        textLabel?.numberOfLines = 0
        
        detailTextLabel?.textColor = .black
        detailTextLabel?.font = UIFont.systemFont(ofSize: 18, weight: .light)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
