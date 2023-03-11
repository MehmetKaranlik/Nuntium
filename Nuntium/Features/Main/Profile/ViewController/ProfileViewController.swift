//
//  ProfileViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 7.03.2023.
//

import Foundation
import Core
import UIKit


class ProfileViewController : UIViewController {
    let profileView = ProfileView()

   override func viewDidLoad() {
      super.viewDidLoad()
      let hosted = profileView.toHostingController()
      hosted.addToVC(target: self)
      setNavigationTitle("Profile",prefersLargeTitle: true)
   }



}

