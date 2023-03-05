//
//  OnboardingView.swift
//  Nuntium
//
//  Created by mehmet karanlık on 4.03.2023.
//

import DesignKit
import SwiftUI
struct OnboardingView: View {
   @StateObject var viewModel = OnboardingViewModel()
   var delegate : OnboardingDelegate?
   var body: some View {
      VStack {
         PageTab(selection: $viewModel.index)
         IndicatorRow(selection: $viewModel.index)
         VerticalSpace.small()
         ProductText.title2("First to know")
            .copyWith(fontWeight: .medium)
         VerticalSpace.standart()
         ProductText.subhead("All news in one place,be the\nfirst to know last news")
            .copyWith(color: Colors().tertiary, fontWeight: .regular)
         VerticalSpace.medium()
         NextButton(viewModel: viewModel)
         VerticalSpace.medium()
      }.onChange(of: viewModel.isComplete) { _ in
         delegate?.didTryToNavigate()
      }
   }
}

struct OnboardingView_Previews: PreviewProvider {
   static var previews: some View {
      OnboardingView()
   }
}

private struct PageTab: View {
   @Binding var selection: Int
   var body: some View {
      TabView(selection: $selection) {
         ForEach(DataProvider.images.indices) { index in
            TabItem(tag: index, selection: $selection)
         }
      }
      .tabViewStyle(.page(indexDisplayMode: .never))
      .animation(.easeInOut(duration: 1), value: selection)
   }
}

private struct TabItem: View {
   let tag: Int
   @Binding var selection: Int
   var body: some View {
      Icons.Onboarding.image
         .padding(.all)
         .scaleEffect(selection == tag ? 1 : 0.8)
         .animation(.easeInOut, value: selection)
         .tag(tag)
   }
}

private struct Indicator: View {
   let isSelected: Bool
   var body: some View {
      RoundedRectangle(cornerRadius: Sizes().xxSmall)
         .frame(width: isSelected ? Sizes().standart : Sizes().xSmall, height: Sizes().xSmall)
         .foregroundColor(isSelected ? Colors().primary : Colors().tertiary)
         .animation(.easeInOut, value: isSelected)
   }
}

private struct IndicatorRow: View {
   @Binding var selection: Int
   var body: some View {
      HStack {
         ForEach(DataProvider.images.indices) { index in
            Indicator(isSelected: index == selection)
         }
      }
   }
}

private struct NextButton: View {
   @StateObject var viewModel: OnboardingViewModel
   var body: some View {
      ActiveButton(onTap: {
         viewModel.increaseIndex(breakPoint: DataProvider.images.count)
      }, label: "Next")
   }
}

private enum DataProvider {
   static let images = [
      Icons.Onboarding.image,
      Icons.Onboarding.image,
      Icons.Onboarding.image,
   ]
}
