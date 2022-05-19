//
//  LoginPageObject.swift
//  MockingDemoUserInterfaceTests
//
//  Created by Bikram Aryal on 20/05/2022.
//

import Foundation
import XCTest

class LoginPageObject {
    var app: XCUIApplication
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var usernameTextField: XCUIElement {
         app.textFields["usernameTextField"]
    }
    
    var passwordTextField: XCUIElement {
        app.textFields["passwordTextField"]
    }
    
    var loginButton: XCUIElement {
        app.buttons["loginButton"]
    }
    
    var messageText: XCUIElement {
        app.staticTexts["messageText"]
    }
    
    var dashboardNevBarTitle: XCUIElement {
        app.staticTexts["Dashboard"]
    }
    
    
}
