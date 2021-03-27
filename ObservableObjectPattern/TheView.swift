//
//  TheView.swift
//  ObservableObjectPattern
//
//  Created by Rick Brown on 27/03/2021.
//

import SwiftUI

struct TheView: View {
  @ObservedObject var viewModel = ViewModel()
  
  var body: some View {
    VStack {
      Button(action: {
        viewModel.increment(by: 1)
      }, label: {
        Text("Up")
      })
      
       AnotherView(theCounter: viewModel.counter)
      
      Text("\(viewModel.currentName)")
      
      Button(action: {
        viewModel.decrement(by: 1)
      }, label: {
        Text("Down")
      })
    }
  }
}

struct AnotherView: View {
  var theCounter: Int
  
  var body: some View {
    Text("\(theCounter)")
  }
}

struct TheView_Previews: PreviewProvider {
  static var previews: some View {
    TheView()
  }
}
