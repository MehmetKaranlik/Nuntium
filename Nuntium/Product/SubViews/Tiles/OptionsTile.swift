//
//  OptionstiLE.swift
//  Nuntium
//
//  Created by mehmet karanlık on 13.03.2023.
//

import DesignKit
import SwiftUI

struct OptionsTile<Content: View>: View {
   let title: String
   @ViewBuilder var rightView: Content

   var body: some View {
      HStack {
         ProductText.title3(title)
            .copyWith(color: Colors().tertiaryContainer, fontWeight: .medium)
         Spacer()
         rightView
      }
      .padding()
      .background(Colors().surface)
      .cornerRadius(Sizes().xSmall)
   }
}

struct OptionstiLE_Previews: PreviewProvider {
   static var previews: some View {
      OptionsTile(title: "Notification", rightView: {
         Toggle(isOn: .constant(true)) {
            EmptyView()
         }


      })
      .previewLayout(.sizeThatFits)
      .padding()
   }
}
