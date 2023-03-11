//
//  UISearchBar+Extensions.swift
//  Nuntium
//
//  Created by mehmet karanlık on 9.03.2023.
//

import Foundation
import UIKit


extension UISearchBar {
   var embeddedTextField : UITextField? {
      if #available(iOS 13, *) {
         return 	 searchTextField
      }
   }


   func setRightImage(image : UIImage?, action : UIAction) {
      showsBookmarkButton = true
      if let button = embeddedTextField?.rightView as? UIButton {
         button.setImage(image, for: .normal)
         button.setImage(image, for: .highlighted)
         button.addAction(action, for: .touchUpInside)
      }else {
         print("button not found")
      }
   }
}
