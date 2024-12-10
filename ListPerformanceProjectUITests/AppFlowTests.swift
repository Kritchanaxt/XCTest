//
//  AppFlowTests.swift
//  ListPerformanceProjectUITests
//
//  Created by Kritchanat on 12/12/2567 BE.
//

import XCTest

final class AppFlowTests: XCTestCase {
    
    private var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDown() {
        super.tearDown()
        app = nil
    }

    func testNavigationStackSelection() throws {
        app.collectionViews.staticTexts["VStack with ScrollView"].tap()
        
        XCTAssert(app.navigationBars["Scrollview with VStack"].exists, "We are not on the VStack screen")
    }

}
