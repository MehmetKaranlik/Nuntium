//
//  OnboardingViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 4.03.2023.
//

import Foundation


import UIKit
import SwiftUI


protocol OnboardingDelegate  {
   func didTryToNavigate()
}

final class OnboardingViewController : UIViewController {
   var onboardingView = OnboardingView()

   override func viewDidLoad() {
      super.viewDidLoad()
      onboardingView.delegate = self
      let hosted = onboardingView.toHostingController()
      hosted.addToVC(target: self)
   }


}

extension OnboardingViewController : OnboardingDelegate {
   func didTryToNavigate() {
      replaceRoot(WelcomeViewController().wrapNavigationController())
   }



}

