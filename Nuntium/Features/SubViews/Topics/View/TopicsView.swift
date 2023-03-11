//
//  TopicsView.swift
//  Nuntium
//
//  Created by mehmet karanlık on 6.03.2023.
//

import DesignKit
import SwiftUI

struct TopicsView: View {
   var delegate: TopicsDelegate!
   var body: some View {
      VStack {
         VerticalSpace.medium()
         Title()
         VerticalSpace.xxSmall()
         SubTitle()
         VerticalSpace.small()
         TopicGrid()
         NextButton(onTap: delegate.didTapNext)
         Spacer()
      }
      .padding(PagePadding.all.standart)
   }
}

struct TopicsView_Previews: PreviewProvider {
   static var previews: some View {
      TopicsView()
   }
}

private struct Title: View {
   var body: some View {
      ProductText.title2("Select your favorite topics")
         .copyWith(color: Colors().secondaryVariant)
         .frame(maxWidth: .infinity, alignment: .leading)
   }
}

private struct SubTitle: View {
   var body: some View {
      ProductText.body("Select some of your favorite topics to let us suggest better news for you.")
         .copyWith(color: Colors().tertiary, textAlign: .leading, fontWeight: .regular)
         .frame(maxWidth: .infinity, alignment: .leading)
   }
}

private struct NextButton: View {
   let onTap: () -> Void
   var body: some View {
      ActiveButton(onTap: onTap, label: "Next")
   }
}
