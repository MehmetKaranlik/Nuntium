//
//  TopicTile.swift
//  Nuntium
//
//  Created by mehmet karanlık on 10.03.2023.
//

import Foundation

import SwiftUI
import DesignKit


struct TopicTile : View {
   let isSelected: Bool
   let onTap:()->()
   var body : some View {
      Button(action: onTap) {
         RoundedRectangle(cornerRadius: Sizes().xSmall)
            .frame(minHeight: Sizes().large)
            .foregroundColor(isSelected ? Colors().primary : Colors().onSurface)
            .overlay(overlayText(isSelected: isSelected))
      }
   }

   @ViewBuilder
   func overlayText(isSelected : Bool) -> some View {
      ProductText.body("🏈 Sports")
         .copyWith(color: isSelected ? .white : Colors().secondary)
   }
}
