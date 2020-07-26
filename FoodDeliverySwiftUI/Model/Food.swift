//
//  Food.swift
//  FoodDeliverySwiftUI
//
//  Created by Nick Nguyen on 7/26/20.
//

import Foundation
import SwiftUI


class Food : Identifiable {
  let title: String
  let price: Double
  let category: Categories
  let id : Int
  
  
  init(title: String, price: Double , category: Categories, id: Int) {
    self.title = title
    self.price = price
    self.category = category
    self.id = id 
  }
}


enum Categories {
  case burger
  case pasta
  case pizza
  case dessert
}
