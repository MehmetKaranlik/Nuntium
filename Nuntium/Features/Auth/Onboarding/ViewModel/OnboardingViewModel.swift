//
//  OnboardingViewModel.swift
//  Nuntium
//
//  Created by mehmet karanlık on 5.03.2023.
//

import Foundation

class OnboardingViewModel: ObservableObject {

   @Published var index = 0

   @Published var isComplete = false

   func increaseIndex(breakPoint : Int) {
      if index < breakPoint - 1 {
         index += 1
      }else {
         isComplete.toggle()
      }
   }

}
