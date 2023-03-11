//
//  SearchTextField.swift
//  Nuntium
//
//  Created by mehmet karanlık on 10.03.2023.
//

import Foundation
import SwiftUI
import DesignKit


struct SearchTextField : IconTextField {
   var icon: Image = Image(systemName: "magnifyingglass")

   var placeHolder: String = "Search"

   let suffixIcon : Image = Image(systemName: "mic")

   let onSuffixTapped: () -> ()

   @Binding var text : String

   var body: some View {

      HStack {
         icon
         TextField(placeHolder, text: $text)
         Button(action: onSuffixTapped) {
            suffixIcon
         }
      }
      .padding(PagePadding.all.small)
      .background(Colors().tertiaryVariant?.opacity(0.2))
      .cornerRadius(Sizes().standart)

      
   }

}

struct SearchTextField_Previews: PreviewProvider {
   @State static private var text : String = "text"
   static var previews: some View {
      SearchTextField(onSuffixTapped: {

      }, text: $text)
   }
}
