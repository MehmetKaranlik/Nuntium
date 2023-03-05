//
//  AuthTextField.swift
//  Nuntium
//
//  Created by mehmet karanlık on 5.03.2023.
//

import Foundation
import SwiftUI

protocol IconTextField : View {
   var icon : Image { get set }
   var placeHolder : String { get set }
   @ViewBuilder @MainActor var body: Self.Body { get }
}
