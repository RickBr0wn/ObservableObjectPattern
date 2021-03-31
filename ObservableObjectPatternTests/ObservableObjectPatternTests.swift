//
//  ObservableObjectPatternTests.swift
//  ObservableObjectPatternTests
//
//  Created by Rick Brown on 27/03/2021.
//

import XCTest
@testable import ObservableObjectPattern

class ObservableObjectPatternTests: XCTestCase {
  var viewModel: ViewModel!
  
  override func setUpWithError() throws {
    viewModel = ViewModel()
  }
  
  override func tearDownWithError() throws {
    viewModel = nil
  }
  
  func testIncrementAndDecrementFunctions() throws {
    XCTAssertEqual(viewModel.counter, .zero)
    viewModel.increment(by: 5)
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
