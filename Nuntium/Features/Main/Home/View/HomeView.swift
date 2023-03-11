//
//  HomeView.swift
//  Nuntium
//
//  Created by mehmet karanlık on 7.03.2023.
//

import DesignKit
import SwiftUI

struct HomeView: View {
   @State var text : String = ""
   var body: some View {
      VStack {
         PageSubTitle()
         SearchField(text: $text)
         VerticalSpace.standart()
         ChipSlider()
         VerticalSpace.small()
         RecommendedCardSlider()
         VerticalSpace.small()
         RecommendedTitleRow()
         RecommendedTiles()
      }
      .padding(PagePadding.horizontal.standart)
      .scrollable()
   }
}

struct HomeView_Previews: PreviewProvider {
   static var previews: some View {
      HomeView()
   }
}



private struct RecommendedCardSlider: View {
   var body: some View {
      HStack(spacing: Sizes().standart) {
         ForEach(0..<5) { _ in
            RecommandedCard()
         }
      }
      .scrollable(axis: .horizontal)
   }
}

private struct RecommendedTitleRow: View {
   var body: some View {
      HStack(alignment: .center) {
         ProductText.title3("Recommended for you")
         Spacer()
         Button {} label: {
            ProductText.body("See All")
               .copyWith(color: Colors().tertiaryContainer)
              
         }
      }
   }
}


private struct RecommendedTiles: View {
   var body: some View {
      ForEach(0..<10) { _ in
         BookMarkTile()
      }
   }
}



private struct SearchField: View {
   @Binding var text : String
   var body: some View {
      SearchTextField(onSuffixTapped: {

      }, text: $text)
   }
}
