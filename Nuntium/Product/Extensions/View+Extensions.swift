//
//  View+Extensions.swift
//  Nuntium
//
//  Created by mehmet karanlık on 9.03.2023.
//

import Foundation
import UIKit
import SwiftUI

extension View {
   func scrollable(axis : Axis.Set = .vertical, showIndicator : Bool = false) -> some View {
      ScrollView(axis,showsIndicators: showIndicator) {
         self
      }
   }
}
