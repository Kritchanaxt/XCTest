//
//  ScrollingPerformanceTests.swift
//  ListPerformanceProjectUITests
//
//  Created by Kritchanat on 12/12/2567 BE.
//

import XCTest

final class ScrollingPerformanceTests: XCTestCase {

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
    
    func testVStackScrolling() throws {
        app.collectionViews.staticTexts["VStack with ScrollView"].tap()
                       
        measure(metrics: [XCTOSSignpostMetric.scrollingAndDecelerationMetric]) {
            app.swipeUp()
            app.swipeDown()
        }
    }
}
