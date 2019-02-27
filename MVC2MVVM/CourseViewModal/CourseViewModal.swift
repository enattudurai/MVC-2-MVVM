//
//  CourseViewModal.swift
//  MVC2MVVM
//
//  Created by Naattudurai Eswaramurthy on 27/02/19.
//  Copyright © 2019 Naattudurai Eswaramurthy. All rights reserved.
//

import Foundation
import UIKit

struct CourseViewModal {
    let courseName : String
    let courseDetailInfo : String
    let accessoryType : UITableViewCell.AccessoryType
    
    init(course : Course) {
        self.courseName = course.name
        
        if course.number_of_Sessions > 35 {
            accessoryType = .detailDisclosureButton
            courseDetailInfo = "30+ Lessons, please check out"
        }
        else
        {
            accessoryType = .none
            courseDetailInfo = " "
        }
        
    }
}
