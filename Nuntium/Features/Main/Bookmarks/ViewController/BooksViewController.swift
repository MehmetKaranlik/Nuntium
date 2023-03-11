//
//  BooksViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 7.03.2023.
//

import Foundation
import Core
import UIKit


class BooksViewController : UIViewController {
   let booksView = BooksView()

   override func viewDidLoad() {
      super.viewDidLoad()
      let hosted = booksView.toHostingController()
      hosted.addToVC(target: self)
      setNavigationTitle("Bookmarks",prefersLargeTitle: true)
   }



}

