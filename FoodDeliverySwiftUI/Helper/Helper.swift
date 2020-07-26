//
//  Helper.swift
//  FoodDeliverySwiftUI
//
//  Created by Nick Nguyen on 7/26/20.
//

import Foundation

func filterData(by category: Categories) -> [Food] {
  var filteredArray = [Food]()
  
  for food in foodData {
    if food.category == category {
      filteredArray.append(food)
    }
  }
  return filteredArray
}

func categoryString(for category: Categories) -> String {
  switch category {
    case .pizza:
      return "Pizza"
    case .burger:
      return "Burger"
    case .pasta:
      return "Pasta"
    case .dessert:
      return "Desserts"
  }
}
