//
//  TopicGrid.swift
//  Nuntium
//
//  Created by mehmet karanlık on 10.03.2023.
//

import Foundation
import SwiftUI


struct TopicGrid: View {
   @StateObject var viewModel = TopicsViewModel()
   var body: some View {
      LazyVGrid(columns: [
         .init(.flexible(), spacing: Sizes().standart),
         .init(.flexible()),
      ], spacing: Sizes().standart) {
         ForEach(0 ..< 10) { index in
            gridItem(
               isSelected: viewModel.isContains(index: index)) {
                  onTap(viewModel: viewModel, index: index)
               }
         }
      }
   }

   @ViewBuilder
   func gridItem(isSelected: Bool, onTap: @escaping () -> Void) -> some View {
      TopicTile(isSelected: isSelected, onTap: onTap)
   }

   func onTap(viewModel: TopicsViewModel, index: Int) {
      viewModel.handleIndexing(index: index)
   }
}
