//
//  SplashViewModel.swift
//  Nuntium
//
//  Created by mehmet karanlık on 4.03.2023.
//

import Foundation
import Core
final class SplashViewModel: ObservableObject {
   @Published var isComplete = false

   init() {
      completeSchedule()
   }

   private final func completeSchedule() {
      DispatchQueue.main.asyncAfter(deadline: .now() + Durations.normal.rawValue) { [weak self] in
         self?.isComplete.toggle()
      }
   }
}
