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
   var largeTitle: Font? = Font.largeTitle.weight(.bold)

   var title1: Font? = Font.title.weight(.bold)

   var title2: Font? = Font.title2.weight(.bold)

   var title3: Font? = Font.title3.weight(.bold)

   var headline: Font? = Font.headline.weight(.semibold)

   var body: Font? = Font.subheadline.weight(.semibold)

   var callout: Font? = Font.callout.weight(.medium)

   var subhead: Font? = Font.subheadline.weight(.medium)

   var footnote: Font? = Font.footnote.weight(.medium)

   var caption1: Font? = Font.caption.weight(.regular)

   var caption2: Font? = Font.caption2.weight(.regular)

   var small: Font? = Font.footnote.weight(.light)

}
