//
//  DetailRow.swift
//  FoodDeliverySwiftUI
//
//  Created by Nick Nguyen on 7/26/20.
//

import SwiftUI

struct DetailRow: View {
  
  var food: Food
  
  @Binding var showOrderSheet: Bool
  
  var body: some View {
    HStack {
      VStack(alignment:.leading) {
        Text(food.title)
          .font(.headline)
          .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        Text("\(food.price,specifier:"%2.2f")$")
          .font(.caption)
      }
      Spacer()
      Button(action: {
        self.showOrderSheet = true
      }, label: {
        Text("ORDER")
          .foregroundColor(.white)
      }
      
      
      ).frame(width: 80, height: 50)
      .background(Color.orange)
      .cornerRadius(10.0)
      .padding(20)
    }
  }
}

struct DetailRow_Previews: PreviewProvider {
  static var previews: some View {
    DetailRow(food:foodData[0], showOrderSheet: .constant(false))
  }
}
