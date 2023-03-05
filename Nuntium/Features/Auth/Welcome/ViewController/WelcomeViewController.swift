//
//  WelcomeViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 5.03.2023.
//

import Foundation

import UIKit


class WelcomeViewController : UIViewController {
   let welcomeView = WelcomeView()

   override func viewDidLoad() {
      super.viewDidLoad()
      let hosted = welcomeView.toHostingController()
      hosted.addToVC(target: self)
 
   }


}

