//
//  DetailRow.swift
//  FoodDeliverySwiftUI
//
//  Created by Nick Nguyen on 7/26/20.
//

import SwiftUI

struct DetailRow: View {
  var body: some View {
    HStack {
      VStack(alignment:.leading) {
        Text("BBQ Burger")
          .font(.headline)
          .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        Text("10.00 $")
          .font(.caption)
      }
      Button(action: {
        print("Order")
      }, label: {
        Text("ORDER")
          .foregroundColor(.white)
      }
      
      ).frame(width: 80, height: 50)
      .background(Color.orange)
      .cornerRadius(10.0)
      
    }
  }
}

struct DetailRow_Previews: PreviewProvider {
  static var previews: some View {
    DetailRow()
  }
}
