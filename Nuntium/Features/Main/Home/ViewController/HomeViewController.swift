//
//  HomeViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 7.03.2023.
//

import Foundation
import UIKit
import Core


class HomeViewController : UIViewController {
   let homeView = HomeView()

   override func viewDidLoad() {
      super.viewDidLoad()
      let hosted = homeView.toHostingController()
      hosted.addToVC(target: self)
      setNavigationTitle("Home",prefersLargeTitle: true)

   }




   


}

