//
//  ListPerformanceProjectUITests.swift
//  ListPerformanceProjectUITests
//
//  Created by Kritchanat on 10/12/2567 BE.
//

import XCTest

final class ListPerformanceProjectUITests: XCTestCase {

    private var app: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown()  {
        super.tearDown()
        app = nil
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
