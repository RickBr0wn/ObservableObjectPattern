//
//  ObservableObjectPatternTests.swift
//  ObservableObjectPatternTests
//
//  Created by Rick Brown on 27/03/2021.
//

import XCTest
@testable import ObservableObjectPattern

/**
 The test method should contain three steps, in the order described below:
   `Arrange`
    Create any objects or data structures that the code path you’re exercising uses. Replace complex dependencies with “stubs” that are easy to configure, to ensure that tests run quickly and are deterministic. Adopting protocol-oriented programming ensures that relationships between objects in your app are sufficiently flexible to enable substitution of real implementations for stubs.
   `Act`:
    Call the method or function that you’re testing, using parameters and properties that you configured in the Arrange phase.
   `Assert`:
    Use Test Assertions to compare the behavior of the code exercised in the Act phase with your expectations of what should happen. Any assertion whose condition is false causes a test to fail.
 */
class ObservableObjectPatternTests: XCTestCase {
  // Arange
  var viewModel: ViewModel!
  
  override func setUpWithError() throws {
    viewModel = ViewModel()
  }
  
  override func tearDownWithError() throws {
    viewModel = nil
  }
  
  func testIncrementAndDecrementFunctions() throws {
    XCTAssertEqual(viewModel.counter, .zero)
    // Act
    viewModel.increment(by: 5)
    // Assert
    XCTAssertEqual(viewModel.counter, 5)
    viewModel.decrement(by: 5)
    XCTAssertEqual(viewModel.counter, .zero)
  }
  
  func testDisplayedUserName() throws {
    XCTAssertEqual(viewModel.counter, .zero)
    XCTAssertEqual(viewModel.currentName, "rick")
    viewModel.increment(by: 2)
    XCTAssertEqual(viewModel.currentName, "lilly")
    viewModel.increment(by: 5)
    XCTAssertEqual(viewModel.currentName, "no more names")
  }
  
  func testPerformanceExample() throws {
    self.measure {}
  }
  
}
