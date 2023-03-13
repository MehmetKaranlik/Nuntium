//
//  IconTextField.swift
//  Nuntium
//
//  Created by mehmet karanlık on 5.03.2023.
//

import DesignKit
import SwiftUI

struct InsecureTextField: IconTextField {
   @Binding var text: String

   var icon: Image = Icons.General.mail

   var placeHolder: String

   var body: some View {
      HStack {
         icon
         TextField(placeHolder, text: $text)
            .foregroundColor(Colors().tertiaryContainer)
            .autocorrectionDisabled(true)
      }
      .padding(PagePadding.all.standart)
      .background(Colors().tertiaryVariant?.opacity(0.2))
      .cornerRadius(Sizes().standart)
   }
}

struct InsecureTextField_Previews: PreviewProvider {
   static var previews: some View {
      InsecureTextField(text: .constant("Test"), placeHolder: "Email")
         .previewLayout(.sizeThatFits)
         .padding(.all)
   }
}
