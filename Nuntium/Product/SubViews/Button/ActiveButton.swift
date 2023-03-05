//
//  ActiveButton.swift
//  Nuntium
//
//  Created by mehmet karanlık on 5.03.2023.
//

import SwiftUI
import DesignKit


struct ActiveButton: View {
   let onTap  : () -> ()
   let label : String
   let color : Color? = Colors().primary
   let cornerRadius : CGFloat? = Sizes().standart
    var body: some View {
       Button(action: onTap) {
             ProductText.headline(label)
             .copyWith(color: .white)
             .frame(maxWidth: .infinity, minHeight:  ButtonSizes.activeButtonHeight.rawValue)
             .background(color)
             .cornerRadius(cornerRadius ?? 0)
       }
       .padding(PagePadding.all.standart)

    }
}

struct ActiveButton_Previews: PreviewProvider {
    static var previews: some View {
       ActiveButton(onTap: {
          print("123")
       }, label: "Next")
    }
}
