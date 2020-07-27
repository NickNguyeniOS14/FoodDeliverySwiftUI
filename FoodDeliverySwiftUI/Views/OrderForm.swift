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
  @State var firstName = ""
  @State var lastName = ""
  @State var streetAddress = ""
  @State var city = ""
  @State var zip = ""
  @State var userFeedback = 0.0
  
  var body: some View {
    Form { // Form is like system's settings app
      
      Toggle(isOn: $specialRequests) {
        Text("Any special requests?")
      }
      if specialRequests {
        TextField("Enter your wishes",text:$specialRequestContent)
      }
      Section {
        
        Stepper(value:$orderAmount, in: 1...10, label: {
          Text("Number of items: \(orderAmount)")
        })
      }
      Section {
        
        TextField("First name", text: $firstName)
        TextField("Last name", text: $lastName)
        TextField("Street address", text: $streetAddress)
        TextField("City", text: $city)
        TextField("Zip", text: $zip)
      }
      
      Section {
        VStack {
          Text("How happy were you with the user experience?")
            .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
          HStack {
            Image(systemName: "hand.thumbsdown")
              .resizable()
              .frame(width:20,height: 20)
            Slider(value: $userFeedback,in:0.0 ... 10.0)
            Image(systemName: "hand.thumbsup")
              .resizable()
              .frame(width:20,height: 20)
          }
        }
      }
      
      Section {
        Button(action: {
          print("Placed")
        }, label: {
          Text("Place order")
        })
      }
      
      
    }
  }
}

struct OrderForm_Previews: PreviewProvider {
  static var previews: some View {
    OrderForm()
  }
}
