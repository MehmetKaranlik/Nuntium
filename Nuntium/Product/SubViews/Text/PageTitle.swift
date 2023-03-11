//
//  PageTitle.swift
//  Nuntium
//
//  Created by mehmet karanlık on 10.03.2023.
//

import Foundation
import SwiftUI
import DesignKit

struct PageSubTitle: View {
   var body: some View {
      ProductText.body("Discover things of this world")
         .copyWith(color: Colors().tertiaryVariant, fontWeight: .light)
         .frame(maxWidth: .infinity,alignment: .leading)
   }
}
