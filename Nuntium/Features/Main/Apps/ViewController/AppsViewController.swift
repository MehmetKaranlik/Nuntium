//
//  AppsViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 7.03.2023.
//

import Foundation
import UIKit
import Core


class AppsViewController : UIViewController {

   let appsView = AppsView()

   override func viewDidLoad() {
      super.viewDidLoad()
      let hosted = appsView.toHostingController()
      hosted.addToVC(target: self)
      setNavigationTitle("Categories",prefersLargeTitle: true)
   }

      

}

