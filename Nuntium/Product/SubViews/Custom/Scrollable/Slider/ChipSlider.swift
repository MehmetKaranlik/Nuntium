//
//  ChipSlider.swift
//  Nuntium
//
//  Created by mehmet karanlık on 10.03.2023.
//

import Foundation
import SwiftUI


struct ChipSlider: View {
   @State var index: Int?
   var body: some View {
      HStack(spacing: Sizes().standart) {
         ForEach(DataProvider.categories.indices) { index in
            ChipButton(
               isSelected: self.index == index,
               label: DataProvider.categories[index]) {
                  onSelected(index)
               }
         }
      }
      .scrollable(axis: .horizontal)
   }

   func onSelected(_ index: Int) {
      withAnimation { self.index = index }
   }
}


private struct DataProvider {
   static let categories: [String] = [
      "Random",
      "Sport",
      "Gaming",
      "Politics",
      "Business"
   ]
}
