//
//  ViewController.swift
//  MVC2MVVM
//
//  Created by Naattudurai Eswaramurthy on 27/02/19.
//  Copyright © 2019 Naattudurai Eswaramurthy. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var courses = [Course]()
    let cellId = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        registerCells()
        setupNavigationBar()
        
        self.fetchCoursesDetails()
        self.tableView.reloadData()
    }
    
    fileprivate func registerCells()
    {
        self.tableView.register(CourseTableViewCell.self, forCellReuseIdentifier: cellId)
        
    }
    
    
    fileprivate func setupNavigationBar()
    {
        self.title = "Courses"
        self.navigationController?.navigationItem.largeTitleDisplayMode = .always
        
    }

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! CourseTableViewCell
        
        cell.course = courses[indexPath.row]
        
        return cell
    }

    
    //fetch data
    
    fileprivate func fetchCoursesDetails()  {
    
        for index in 1...5 {
            let course = Course()
            course.courseId = index
            course.name = "Course \(index)"
            course.number_of_Sessions = index * 10
            
            courses.append(course)
        }
    
    }
}



