//
//  Fonts.swift
//  UIKit+SwiftUI+Architecture
//
//  Created by mehmet karanlık on 25.02.2023.
//

import Foundation
import DesignKit
import SwiftUI

/// Set your design values here to initialize DesignKit 
struct Fonts : AppFonts {
   var largeTitle: Font? = Font.system(.largeTitle, weight: .bold)

   var title1: Font? = Font.system(.title, weight: .bold)

   var title2: Font? = Font.system(.title2, weight: .bold)

   var title3: Font? = Font.system(.title3, weight: .bold)

   var headline: Font? = Font.system(.headline, weight: .semibold)

   var body: Font? = Font.system(.subheadline, weight: .semibold)

   var callout: Font? = Font.system(.caption, weight: .medium)

   var subhead: Font? = Font.system(.subheadline, weight: .medium)

   var footnote: Font? = Font.system(.footnote, weight: .medium)

   var caption1: Font? = Font.system(.caption, weight: .regular)

   var caption2: Font? = Font.system(.caption2,weight: .regular)

   var small: Font? = Font.system(.footnote, weight: .regular)

}
