//
//  TopicsViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 6.03.2023.
//

import Foundation


import UIKit

protocol TopicsDelegate  {
   func didTapNext()
}

class TopicsViewController : UIViewController {
   var topicsView = TopicsView()

   override func viewDidLoad() {
      super.viewDidLoad()
      topicsView.delegate = self
      let hosted = topicsView.toHostingController()
      hosted.addToVC(target: self)
   }

}

extension TopicsViewController : TopicsDelegate {
   func didTapNext() {
      replaceRoot(TabViewController())
   }
}

