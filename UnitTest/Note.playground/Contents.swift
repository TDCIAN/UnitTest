import UIKit

// MARK: Section 2: Basics of Unit Testing in Xcode

// MARK: The F.I.R.S.T Principle (Section 2.5)
/*
Fast - Unit tests run fast
Independent - Unit tests are independent
Repeatable - Unit tests are repeatable
Self-validating - Unit test validates itself
Thorough & Timely - Cover edge cases
 */

// MARK: Test-Driven Development Lifecycle (Section 2.6)
/*
 The Test-Driven Development Life Cycle (Red -> Green -> Refactor -> Repeat)
 
    - Red
        - Write Unit test that fails.
 
    - Green
        - Write App code to make Unit test pass.
 
    - Refactor
        - Clean up and improve Unit test and app code.
 
    - Repeat
        - Repeat these steps until all your app features are built and tested.
 */

// MARK: Unit Test Naming Requirements (Section 2.13)
/*
 Unit Test Method Requirements
 
 func testColorsRed() {
 
    // Some code here
 
 }
 
 - Each test method must begin with the prefix test.
 - Test method does not take arguments.
 - Test method does not return a value.
 
 Naming Pattern:
 
 func test<System Under Test>_<Condition Or State Change>_<Expected Result>() {
 
 
 }

 Example:
 
 testSignupFormModel_WhenInformationProvided_PasswordShouldMatchRepeatPassword() {
 
 
 }
*/

// MARK: Assertions (Section 2.19)
/*
 Nil Test Assertions
 
 - Use these to assert that an item is or is not nill.
    - XCTAssertNil: XCTAssertNil(expression, "optional description") - Asserts that expression is nil
    - XCTAssertNotNil: XCTAssertNotNil(expression, "optional description") - Asserts that expression is not nil
    - XCTUnwrap: Asserts that an expression is not nil and returns the unwrapped value.
 
 
 Equality Test Assertions
 
 - Use these to assert a relationship between two items.
    - XCTAssertEqual: XCTAssertEqual(expression1, expression2, "optional description")
        - Asserts that two expressions have the same value
 
    - XCTAssertNotEqual: XCTAssertNotEqual(expression1, expression2, "optional description")
        - Asserts that two expressions do not have the same value
 
    - XCTAssertGreaterThan: XCTAssertGreaterThan(expression1, expression2, "optional description")
        - Asserts that the value of one expression is greater than another
 
    - XCTAssertLessThan: XCTAssertLessThan(expression1, expression2, "optional description")
        - Asserts that one value is less than another
 
    - XCTAssertLessThanOrEqual: XCTAssertLessThanOrEqual(expression1, expression2, "optional description")
        - Asserts that one value is less than or equal to another
 
    - XCTAssertEqualWithAccuracy: XCTAssertEqualWithAccuracy(expression1, expression2, "optional description")
        - Asserts that two expressions have the same value within a certain accuracy
 
 
 Unconditional Fail
 
 - XCTFail: XCTFail("optional description")
    - Generates a failure immediately and unconditionally
 
 
 Exception Tests
 
 - Use these to assert that evaluating an expression generates an exception or not.
 
    - XCTAssertThrowsError: XCTAssertThrowsError(expression, "optional description")
        - Asserts that an expression throws an error
 
    - XCTAssertNoThrow: XCTAssertNoThrow(expression, "optional description")
        - Asserts that an expression does not throw an error
 */

