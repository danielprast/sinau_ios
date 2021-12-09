//
//  UserProjectTests.swift
//  
//
//  Created by Daniel Prastiwa on 09/06/21.
//

import XCTest
@testable import LearnUnitTest

final class UserProjectTests: XCTestCase {
    
    func testUserProjectSongPluralizationWith30Items() {
        // given
        let sut = createTestUser(projects: 3, itemsPerProject: 10)
        
        // when
        let rowTitle = sut.outstandingTaskString
        
        // then
        XCTAssertEqual(rowTitle, "30 items")
    }
    
    func createTestUser(projects: Int, itemsPerProject: Int) -> User {
        var user = User(name: "Morgan Stark")
        XCTAssertEqual(user.projects.count, 0)
        
        for album in 1...projects {
            print("album: \(album)")
            var project = Project(name: "Album #\(album)")
            XCTAssertEqual(project.toDoItems.count, 0)
            user.addProject(project)
            
            for song in 1...itemsPerProject {
                let item = ToDoItem(name: "Write song #\(song)")
                project.addItem(item)
            }
        }
        
        return user
    }
}
