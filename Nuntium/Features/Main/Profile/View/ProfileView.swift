//
//  ProfileView.swift
//  Nuntium
//
//  Created by mehmet karanlık on 7.03.2023.
//

import DesignKit
import SDWebImageSwiftUI
import SwiftUI

struct ProfileView: View {
   @State var isToggled: Bool = false
   var body: some View {
      VStack {
         VerticalSpace.medium()
         ProfileTile()
         VerticalSpace.small()
         UpperOptions(isToggled: $isToggled)
         Spacer()
            .layoutPriority(1)
         LowerOptions()
         Spacer()
            .layoutPriority(1)
         VerticalSpace.standart()
      }

      .padding(PagePadding.horizontal.standart)
   }
}

struct ProfileView_Previews: PreviewProvider {
   static var previews: some View {
      ProfileView()
   }
}

private struct ProfileTile: View {
   var body: some View {
      HStack(spacing: Sizes().standart) {
         WebImage(url: AppConstants.profileImageUrl)
            .placeholder(content: {
               ProgressView()
            })
            .clipShape(Circle())

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

private struct UpperOptions: View {
   @Binding var isToggled: Bool
   var body: some View {
      VStack {
         OptionsTile(title: "Notification") {
            Toggle("", isOn: $isToggled)
               .toggleStyle(
                  SwitchToggleStyle(
                     tint: Colors().primary ?? .red
                  ))
         }
         OptionsTile(title: "Language") {
            Image(systemName: "chevron.right")
         }
         OptionsTile(title: "Change Password") {
            Image(systemName: "chevron.right")
         }
      }
   }
}

private struct LowerOptions: View {
   var body: some View {
      VStack {
         OptionsTile(title: "Privacy") {
            Image(systemName: "chevron.right")
         }
         OptionsTile(title: "Terms & Conditions") {
            Image(systemName: "chevron.right")
         }

         Spacer()
            .layoutPriority(1)
         OptionsTile(title: "Sign Out") {
            Image(systemName: "rectangle.portrait.and.arrow.right")
         }
         
      }
   }
}
