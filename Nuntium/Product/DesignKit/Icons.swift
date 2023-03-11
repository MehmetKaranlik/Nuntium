//
//  Icons.swift
//  Nuntium
//
//  Created by mehmet karanlık on 4.03.2023.
//

import Foundation
import SwiftUI

struct Icons {
   static let appLogo : Image = Image("AppLogo")

   struct Onboarding {
      static let image = Image("Onboarding")
   }

   struct General {
      static let mail = Image("mail")
      static let lock = Image("lock")
   }

   struct SpecialLogin {
      static let google = Image("google-logo")
      static let facebook = Image("facebook-logo")
   }

   struct TabBar {
      static let home = UIImage(named: "home")
      static let apps = UIImage(named:"apps")
      static let bookmark = UIImage(named:"bookmark")
      static let profile = UIImage(named:"profile")
   }

   struct Cards {
      static let home = Image("card-image")
      static let bookmark = Image("card-image-small")
   }
}
