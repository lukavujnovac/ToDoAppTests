//
//  MyToDoAppUITests.swift
//  MyToDoAppUITests
//
//  Created by Luka Vujnovac on 01.10.2021..
//

import XCTest

class when_the_user_types_task_name_and_press_add_button: XCTestCase {
    
    private var app: XCUIApplication! 
    
    override func setUp() {
        super.setUp()
        
        self.app = XCUIApplication()
        self.app.launch()
    }
    
    func test_should_add_task_to_the_list() {
        
        let taskNameTextField = self.app.textFields["taskNameTextField"]
        taskNameTextField.tap()
        taskNameTextField.typeText("Wash the car \n")
        
        let addTaskButton = self.app.buttons["addTaskButton"]
        addTaskButton.tap()
        
        let taskCount = self.app.tables.children(matching: .cell).count
        XCTAssertEqual(1, taskCount)
    }
}
