//
//  ContentView.swift
//  FoodDeliverySwiftUI
//
//  Created by Nick Nguyen on 7/26/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("burger")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .frame(width: 300, height: 150)
          .clipped()
          .cornerRadius(20.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
