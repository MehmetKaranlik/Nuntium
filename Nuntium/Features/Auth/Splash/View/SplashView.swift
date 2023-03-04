//
//  SplashView.swift
//  Nuntium
//
//  Created by mehmet karanlık on 4.03.2023.
//

import SwiftUI
import DesignKit


struct SplashView: View {

   @StateObject var viewModel = SplashViewModel()
   var delegate : SplashViewDelegate?
    var body: some View {
       ZStack {
          Colors().primary
          LogoView()
       }
       .ignoresSafeArea()
       .onChange(of: viewModel.isComplete, perform: didComplete)
    }


   func didComplete(e : any Equatable) -> () {
      delegate?.didComplete()
   }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}


private struct LogoView : View {
   var body : some View {
      VStack {
         Icons.appLogo
         ProductText.title1(AppConstants.appName)
            .copyWith(color: Colors().surface)
      }
   }
}
