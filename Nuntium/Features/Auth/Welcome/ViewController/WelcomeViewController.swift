//
//  WelcomeViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 5.03.2023.
//

import Foundation

import UIKit


protocol WelcomeDelegate where Self : ObservableObject {
   func didTapSignIn()
}

class WelcomeViewController : UIViewController {
   var welcomeView = WelcomeView()

   override func viewDidLoad() {
      super.viewDidLoad()
      welcomeView.delegate = self
      let hosted = welcomeView.toHostingController()
      hosted.addToVC(target: self)
   }

}

extension WelcomeViewController : WelcomeDelegate, ObservableObject {
   func didTapSignIn() {
      replaceRoot(TopicsViewController())
   }


}

