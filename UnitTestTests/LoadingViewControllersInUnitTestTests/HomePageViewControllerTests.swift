//
//  HomePageViewControllerTests.swift
//  UnitTestTests
//
//  Created by 김정민 on 2021/08/30.
//

import XCTest
@testable import UnitTest

class HomePageViewControllerTests: XCTestCase {
    
    var sut: HomePageViewController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = HomePageViewController()
        sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
