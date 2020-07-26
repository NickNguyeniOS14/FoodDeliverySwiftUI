//
//  DetailView.swift
//  FoodDeliverySwiftUI
//
//  Created by Nick Nguyen on 7/26/20.
//

import SwiftUI

struct DetailView: View {
  var currentCategory: Categories
  
    var body: some View {
      List(filterData(by: currentCategory)) { food in
        DetailRow(food: food)
      }
      .navigationBarTitle(Text(categoryString(for: currentCategory)),displayMode: .inline)
    }
}
#if DEBUG
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
      DetailView(currentCategory: .burger)
    }
}
#endif
