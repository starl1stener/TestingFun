//
//  LoginTests.swift
//  SimpleNoteTakingApp
//
//  Created by nag on 04/11/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import KIF

class LoginTests : KIFTestCase {
    
    override func beforeEach() {
        clearOutUsernameAndPasswordFields()
    }
    
    func testCorrectUsernameAndPassword() {
        fillInUsername()
        fillInCorrectPassword()
        tapButton(buttonName: "Login")
        expectToGoToHomeScreen()
    }
    
    
    func testEmptyUsernameAndPassword() {
        tapButton(buttonName: "Login")
        expectToSeeAlert(text: "Username cannot be empty")
        tapButton(buttonName: "OK")

    }
    
    
    func testEmptyPassword() {
        fillInUsername()
        tapButton(buttonName: "Login")
        expectToSeeAlert(text: "Password cannot be empty")
        tapButton(buttonName: "OK")
    }
    
    
    func testWrongUsernameOrPassword() {
        fillInUsername()
        fillInWrongPassword()
        tapButton(buttonName: "Login")
        expectToSeeAlert(text: "Username or password is incorrect")
        tapButton(buttonName: "OK")
    }
    
    
    
    
}


















