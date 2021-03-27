//
//  ViewModel.swift
//  ObservableObjectPattern
//
//  Created by Rick Brown on 27/03/2021.
//

import Foundation

class ViewModel: ObservableObject {
  @Published var counterModel = Counter()
  
  var counter: Int {
    counterModel.counter
  }
  
  var currentName: String {
    if counterModel.counter <= 2 && counterModel.counter >= 0 {
      return counterModel.names[counterModel.counter]
    }
    return "no more names"
  }
  
  func increment(by value: Int) {
    counterModel.increment(by: value)
  }
  
  func decrement(by value: Int) {
    counterModel.decrement(by: value)
  }
}
