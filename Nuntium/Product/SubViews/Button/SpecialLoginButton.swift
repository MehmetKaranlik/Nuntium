//
//  SpecialLoginButton.swift
//  Nuntium
//
//  Created by mehmet karanlık on 5.03.2023.
//

import Foundation
import SwiftUI
import DesignKit


struct SpecialLoginButton : View {
   let type : SpecialLoginTypes

   var body : some View {
      Button {

      } label: {
         ZStack(alignment: .leading) {
            ProductText.body(type.rawValue)
               .copyWith(color: Colors().tertiaryContainer)
               .frame(maxWidth: .infinity)
            type.toIcon()
               .padding(PagePadding.all.standart)
         }
         .modifier(BorderOverlay())


      }


   }
}

struct SpecialLoginButton_Previews: PreviewProvider {
   static var previews: some View {
      SpecialLoginButton(type: .facebook)
         .previewLayout(.sizeThatFits)
         .padding(.all)
   }
}


private struct BorderOverlay : ViewModifier {
   func body(content: Content) -> some View {
      content
         .overlay(
            RoundedRectangle(cornerRadius: Sizes().xSmall)
               .stroke(
                  (Colors().tertiaryVariant ?? .white).opacity(0.2)
                  ,lineWidth: 2
               )
         )
   }
}
