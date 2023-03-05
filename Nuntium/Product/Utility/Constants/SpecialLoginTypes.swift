//
//  SpecialLoginTypes.swift
//  Nuntium
//
//  Created by mehmet karanlık on 5.03.2023.
//

import Foundation
import SwiftUI


enum SpecialLoginTypes : String {


   case google = "Sign In with Google"
   case facebook = "Sign In with Facebook"

   func toIcon() -> some View {
      switch self {
         case .google:
            return Icons.SpecialLogin.google
         case .facebook:
            return Icons.SpecialLogin.facebook
      }
   }
}


struct SpecialLoginItem {

}
