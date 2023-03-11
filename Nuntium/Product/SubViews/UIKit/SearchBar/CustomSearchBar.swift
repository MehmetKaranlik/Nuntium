//
//  CustomSearchBar.swift
//  Nuntium
//
//  Created by mehmet karanlık on 9.03.2023.
//

import Foundation
import UIKit


class CustomSearchBar : UISearchBar {

   lazy var micView  = UIImage(systemName: "mic")
   let action : UIAction

   init(action : UIAction) {
      self.action = action
      super.init(frame: .zero)
   }

   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }



}



/// UISearchController with custom rightView call changeRightButtonImage func to change rightView on viewDidAppear!
class CustomSearchController : UISearchController {
   let action : UIAction
   let image : UIImage?

   init(action : UIAction, image: UIImage?) {
      self.action = action
      self.image = image
      super.init(nibName: nil, bundle: nil)


   }

   required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }

   func changeRightButtonImage() {
      self.searchBar.setRightImage(image: self.image, action: action)
   }
}
