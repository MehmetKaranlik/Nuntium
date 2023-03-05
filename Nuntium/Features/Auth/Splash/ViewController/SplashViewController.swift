//
//  SplashViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 4.03.2023.
//

import Foundation


import UIKit
import SwiftUI

protocol SplashViewDelegate {
   func didComplete()
}


class SplashViewController : UIViewController {
   var splashView = SplashView()

   override func viewDidLoad() {
      super.viewDidLoad()
      splashView.delegate = self
      let hosted = splashView.toHostingController()
      hosted.addToVC(target: self)
   }
}



extension SplashViewController : SplashViewDelegate {
   func didComplete() {
      replaceRoot(OnboardingViewController())
   }


}
