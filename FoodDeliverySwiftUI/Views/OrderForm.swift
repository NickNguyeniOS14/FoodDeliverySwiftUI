//
//  OrderForm.swift
//  FoodDeliverySwiftUI
//
//  Created by Nick Nguyen on 7/27/20.
//

import SwiftUI

struct OrderForm: View {
  @State var specialRequests = false
  @State var specialRequestContent = ""
  @State var orderAmount = 1
  
    var body: some View {
      Form { // Form is like system's settings app
        
        Toggle(isOn: $specialRequests) {
          Text("Any special requests?")
        }
        if specialRequests {
          TextField("Enter your wishes",text:$specialRequestContent)
        }
        Stepper(value:$orderAmount, in: 1...10, label: {
          Text("Number of items: \(orderAmount)")
        })
      }
    }
}

struct OrderForm_Previews: PreviewProvider {
    static var previews: some View {
        OrderForm()
    }
}
