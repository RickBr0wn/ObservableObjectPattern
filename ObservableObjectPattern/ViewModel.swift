//
//  ViewModel.swift
//  ObservableObjectPattern
//
//  Created by Rick Brown on 27/03/2021.
//

import Foundation


/**
 A view model to represent the `Counter` model
 
 Available public variables:
 - `counter` - An integer to represent the counter.
 - `currentName` - A string which repsents the user at the counter index of the counter models `names` array.
 - `increment(by value: Int)` - A function to increment the counter in the counter model.
 - `decrement(by value: Int)` - A function to decrement the counter in the counter model.
*/
class ViewModel: ObservableObject {
  @Published var counterModel = Counter()
  
  /// The current counter. Will be used in generating the `currentName` variable
  var counter: Int {
    counterModel.counter
  }
  
  /// The name of the user located at the current counters index in the names array (see Counter.swift)
  var currentName: String {
    counterModel.counter <= 2 && counterModel.counter >= 0 ? counterModel.names[counterModel.counter] : "no more names"
  }
  
  /// A method to add an amount to the current counter total
  /// - Parameter by: A value with which to add to the existing counter total.
  func increment(by value: Int) {
    counterModel.increment(by: value)
  }
  
  /// A method to subract an amount from the current counter total.
  /// - Parameter by: A value with which to subtract from the existing counter total.
  func decrement(by value: Int) {
    counterModel.decrement(by: value)
  }
}
