//
//  Model.swift
//  ObservableObjectPattern
//
//  Created by Rick Brown on 27/03/2021.
//

import Foundation

struct Counter {
  private(set) var counter: Int = 0
  let names: Array<String> = ["rick", "alice", "lilly", "harry"]
  
  mutating func increment(by value: Int) {
    self.counter += value
  }
  
  mutating func decrement(by value: Int) {
    self.counter -= value
  }
}
