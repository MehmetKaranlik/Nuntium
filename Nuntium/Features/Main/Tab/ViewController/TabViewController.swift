//
//  TabViewController.swift
//  Nuntium
//
//  Created by mehmet karanlık on 6.03.2023.
//

import Foundation

import SwiftUI
import UIKit
import Core

class TabViewController: UITabBarController {
   override func viewDidLoad() {
      super.viewDidLoad()
      setViewController()


   }

   private func setViewController() {
      setViewControllers(
         DataProvider.tabs.enumerated().map { index, element in
            element.viewController.withTabBarItem(
               .init(title: nil, image: element.icon, tag: index)
            )
         },
         animated: false
      )
   }
}

private enum DataProvider {
   static let tabs = [
      TabItem(icon: Icons.TabBar.home, viewController: HomeViewController()),
      TabItem(icon: Icons.TabBar.apps, viewController: AppsViewController()),
      TabItem(icon: Icons.TabBar.bookmark, viewController: BooksViewController()),
      TabItem(icon: Icons.TabBar.profile, viewController: ProfileViewController()),
   ]
}

private struct TabItem {
   let icon: UIImage?

   let viewController: UIViewController

   init(icon: UIImage?, viewController: UIViewController) {
      self.icon = icon

      self.viewController = viewController.wrapNavigationController()
   }
}
