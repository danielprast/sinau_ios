//
//  Models.swift
//  
//
//  Created by Daniel Prastiwa on 09/06/21.
//

import Foundation

struct User {
    var name: String
    var projects: [Project] = []
    
    mutating func addProject(_ project: Project) {
        self.projects.append(project)
    }
    
    var outstandingTaskString: String {
        get {
            var count = 0
            
            for project in projects {
                count += project.toDoItems.count
            }
            
            let plural = count > 1 ? "s" : ""
            return "\(count) item\(plural)"
        }
    }
}

struct Project {
    var name: String
    var toDoItems: [ToDoItem] = []
    
    mutating func addItem(_ item: ToDoItem) {
        toDoItems.append(item)
    }
}

struct ToDoItem {
    var name: String
}
