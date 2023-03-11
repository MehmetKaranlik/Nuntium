//
//  TopicsViewModel.swift
//  Nuntium
//
//  Created by mehmet karanlık on 6.03.2023.
//

import Foundation

class TopicsViewModel: ObservableObject {
   @Published var selectedIndexes: [Int] = []

   func isContains(index: Int) -> Bool {
      selectedIndexes.contains(index)
   }

   func handleIndexing(index: Int) {
      if isContains(index: index) {
         handleRemoval(index: index)
      } else {
         handleInsertion(index: index)
      }
   }

   private func handleInsertion(index: Int) {
      selectedIndexes.append(index)
   }

   private func handleRemoval(index: Int) {
      selectedIndexes.removeAll { $0 == index }
   }
}
