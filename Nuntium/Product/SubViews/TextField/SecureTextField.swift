//
//  SecureTextField.swift
//  Nuntium
//
//  Created by mehmet karanlık on 5.03.2023.
//

import DesignKit
import SwiftUI

struct SecuredTextField: IconTextField {
   @Binding var text: String
   var icon: Image = Icons.General.lock
   var placeHolder: String

   var body: some View {
      HStack {
         icon
         SecureField(placeHolder, text: $text)
            .foregroundColor(Colors().tertiaryContainer)
      }
      .padding(PagePadding.all.standart)
      .background(Colors().tertiaryVariant?.opacity(0.2))
      .cornerRadius(Sizes().standart)
   }
}

struct SecuredTextField_Previews: PreviewProvider {
   static var previews: some View {
      SecuredTextField(text: .constant("123"), placeHolder: "Password")
         .previewLayout(.sizeThatFits)
         .padding(.all)
   }
}
