//
//  BookMarkTile.swift
//  Nuntium
//
//  Created by mehmet karanlık on 9.03.2023.
//

import Foundation
import SwiftUI
import DesignKit
struct BookMarkTile: View {
   var body: some View {
      HStack {
         Icons.Cards.bookmark
         VStack(alignment: .leading) {
            ProductText.body("UI/UX Design")
               .copyWith(color: Colors().tertiaryContainer, fontWeight: .light)
            VerticalSpace.xxSmall()
            ProductText.body("A Simple Trick For Creating Color Palettes Quickly")
         }
      }
   }
}

struct BookMarkTile_Previews: PreviewProvider {
   static var previews: some View {
      BookMarkTile()
         .previewLayout(.sizeThatFits)
         .padding()
   }
}



