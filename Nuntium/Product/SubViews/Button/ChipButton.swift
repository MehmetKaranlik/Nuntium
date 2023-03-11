//
//  ChipButton.swift
//  Nuntium
//
//  Created by mehmet karanlık on 9.03.2023.
//

import Foundation
import SwiftUI
import DesignKit

struct ChipButton: View {
   let isSelected: Bool
   let label: String
   let onTap : () -> ()
   var body: some View {
      Button(action: onTap) {
         ZStack {
            backgroundView(isSelected)
            ProductText.body(label)
               .copyWith(color: isSelected ? Color.white : Colors().primary)
               .padding(PagePadding.all.xSmall)
         }
      }
   }

   @ViewBuilder
   func backgroundView(_ isSelected: Bool) -> some View {
      Capsule()
         .fill(isSelected ? Colors().primary! : Colors().surface!)
         .frame(minWidth: Sizes().xLarge)
   }
}
