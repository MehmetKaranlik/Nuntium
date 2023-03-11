//
//  RecommandedCard.swift
//  Nuntium
//
//  Created by mehmet karanlık on 9.03.2023.
//

import SwiftUI
import DesignKit

struct RecommandedCard: View {
    var body: some View {
       ZStack(alignment: .topTrailing) {
          ZStack(alignment: .bottomLeading) {
             Icons.Cards.home
             VStack(alignment: .leading) {
                ProductText.body("Politics")
                   .copyWith(color: .white, fontWeight: .light)
                VerticalSpace.xxSmall()
                ProductText.body("The latest situation in the\n presidential election")
                   .copyWith(color: .white,textAlign: .leading, fontWeight: .semibold)
                VerticalSpace.small()
             }
             .padding(PagePadding.left.small)

          }
          Image(systemName: "bookmark")
             .foregroundColor(.white)
             .padding(PagePadding.all.small)
       }
    }
}

struct RecommandedCard_Previews: PreviewProvider {
    static var previews: some View {
        RecommandedCard()
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
