//
//  WelcomeView.swift
//  Nuntium
//
//  Created by mehmet karanlık on 5.03.2023.
//

import DesignKit
import SwiftUI

struct WelcomeView: View {

   var body: some View {
      VStack {
         UpperGroup()
         OrSpacing()
         LowerGroup()
      }
      .padding(PagePadding.horizontal.standart)

   }
}

struct WelcomeView_Previews: PreviewProvider {
   static var previews: some View {
      WelcomeView()
   }
}

private struct Title: View {
   var body: some View {
      ProductText.title1("Welcome Back 👋")
         .copyWith(fontWeight: .medium)
         .frame(maxWidth: .infinity, alignment: .leading)
         .padding(PagePadding.bottom.xxSmall)
   }
}

private struct Subtitle: View {
   var body: some View {
      ProductText.subhead("I am happy to see you again. You can continue where you left off by logging in")
         .copyWith(
            color: Colors().tertiary,
            textAlign: .leading,
            fontWeight: .medium
         )
         .frame(maxWidth: .infinity, alignment: .leading)

   }
}

private struct TextFields: View {
   @Binding var email: String
   @Binding var password: String
   var body: some View {
      VStack {
         InsecureTextField(text: $email, placeHolder: "Email")
         SecuredTextField(text: $password, placeHolder: "Password")
      }
   }
}

private struct ForgotPasswordButton: View {
   var body: some View {
      Button {} label: {
         ProductText.subhead("Forgot Password?")
      }
      .frame(maxWidth: .infinity, alignment: .trailing)
   }
}

private struct SignInButton: View {
   var body: some View {
      ActiveButton(onTap: {}, label: "Sign In")
         .layoutPriority(1)
   }
}

private struct OrSpacing: View {
   var body: some View {
      VStack {
         Spacer()
         ProductText.footnote("or")
         Spacer()
      }
   }
}

private struct SignUpButton: View {
   var body: some View {
      Button {} label: {
         ProductText.callout("Don't have an account? Sign Up")
      }
   }
}

// groups

struct UpperGroup: View {
   @State var email: String = ""
   @State var password: String = ""
   var body: some View {
      Group {
         VerticalSpace.medium()
         Title()
         Subtitle()
         VerticalSpace.medium()
         TextFields(email: $email, password: $password)
         VerticalSpace.standart()
         ForgotPasswordButton()
         VerticalSpace.small()
         SignInButton()
      }
   }
}

struct LowerGroup: View {
   var body: some View {
      Group {
         SpecialLoginButton(type: .google)
         SpecialLoginButton(type: .facebook)
         VerticalSpace.large()
         SignUpButton()
         Spacer()
            .layoutPriority(0)
      }
   }
}
