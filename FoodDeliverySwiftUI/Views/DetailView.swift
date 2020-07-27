//
//  DetailView.swift
//  FoodDeliverySwiftUI
//
//  Created by Nick Nguyen on 7/26/20.
//

import SwiftUI

struct DetailView: View {
  @State var showOrderSheet = false
 
  var currentCategory: Categories
  
    var body: some View {
      List(filterData(by: currentCategory)) { food in
        DetailRow(food: food, showOrderSheet: self.$showOrderSheet)
      }
      .navigationBarTitle(Text(categoryString(for: currentCategory)),displayMode: .inline)
      .sheet(isPresented: $showOrderSheet) {
        OrderForm()
      }
    }
}
#if DEBUG
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
      DetailView(currentCategory: .burger)
      
    }
}
#endif
