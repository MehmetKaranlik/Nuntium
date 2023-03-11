//
//  ProfileView.swift
//  Nuntium
//
//  Created by mehmet karanlık on 7.03.2023.
//

import SwiftUI
import DesignKit
import SDWebImageSwiftUI

struct ProfileView: View {
    var body: some View {
       VStack {
          VerticalSpace.medium()
          ProfileTile()
       }
       .scrollable()
       .padding(PagePadding.horizontal.standart)

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


private struct ProfileTile : View {

   var body : some View {
      HStack {
         WebImage(url: AppConstants.profileImageUrl)
            .placeholder(content: {
               ProgressView()
            })
            .clipShape(Circle())
         HorizontalSpace.small()
         VStack(alignment: .leading) {
            ProductText.title3("Eren Turkmen")
            ProductText.body("ertuken@gmail.com")
               .copyWith(color: Colors().tertiaryVariant, fontWeight: .regular)
         }
         .layoutPriority(2)
         Spacer()
            .layoutPriority(1)


      }

   }
}
