//
//  smartbicycleUITests.swift
//  smartbicycleUITests
//
//  Created by rex on 2022/12/8.
//

import XCTest

class smartbicycleUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTextField() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func testLoginForm() throws {
        let app = XCUIApplication()
        app.launch()
        
        let username = app.textFields["Username"]
        XCTAssert(username.exists)
        app.textFields.element.tap()
        app.textFields.element.typeText("admin")
        app.keyboards.buttons["Return"].tap()
    
        let password = app.secureTextFields["Password"]
        XCTAssert(password.exists)
        app.secureTextFields.element.tap()
        
    }
    
    func testregistration() throws {
        let app = XCUIApplication()
        app.launch()
        let registration = app.buttons["Registration"]
        XCTAssert(registration.exists)
        XCTAssertEqual(registration.label, "Registration")
        app.buttons["Registration"].tap()
        
    }
    
    func testBiometric() throws {
        let app = XCUIApplication()
        app.launch()
        let Biometric = app.buttons["Biometric"]
        XCTAssert(Biometric.exists)
        XCTAssertEqual(Biometric.label, "Biometric")
        app.buttons["Biometric"].tap()
        
    }
    
}
