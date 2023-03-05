//
//  TopicsViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 6.03.2023.
//

import Foundation


import UIKit


class TopicsViewController : UIViewController {
   let topicsView = TopicsView()

   override func viewDidLoad() {
      super.viewDidLoad()
      let hosted = topicsView.toHostingController()
      hosted.addToVC(target: self)
   }

}

