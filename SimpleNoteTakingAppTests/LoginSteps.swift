//
//  LoginSteps.swift
//  SimpleNoteTakingApp
//
//  Created by nag on 04/11/2016.
//  Copyright © 2016 AppCoda. All rights reserved.
//

extension LoginTests {
    
    func clearOutUsernameAndPasswordFields() {
        tester().clearTextFromView(withAccessibilityLabel: "Login - Username")
        tester().clearTextFromView(withAccessibilityLabel: "Login - Password")
    }
    
    func tapButton(buttonName: String) {
        tester().tapView(withAccessibilityLabel: buttonName)
    }
    
    func expectToSeeAlert(text: String) {
        tester().waitForView(withAccessibilityLabel: text)
    }
    
    func fillInUsername() {
        tester().enterText("appcoda", intoViewWithAccessibilityLabel: "Login - Username")
    }
    
    func fillInWrongPassword() {
        tester().enterText("wrongPassword", intoViewWithAccessibilityLabel: "Login - Password")
    }
    
    func fillInCorrectPassword() {
        tester().enterText("correctPassword", intoViewWithAccessibilityLabel: "Login - Password")
    }
    
    func expectToGoToHomeScreen() {
        // expect login screen to disappear
        tester().waitForAbsenceOfView(withAccessibilityLabel: "Login - Username")
        tester().waitForAbsenceOfView(withAccessibilityLabel: "Login - Password")
        tester().waitForAbsenceOfView(withAccessibilityLabel: "Login")
        
        // expect to see Home screen
        tester().waitForView(withAccessibilityLabel: "No notes")
        tester().waitForView(withAccessibilityLabel: "Add note")
    }
    
}










