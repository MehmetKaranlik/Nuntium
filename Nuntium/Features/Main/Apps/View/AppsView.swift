//
//  AppsView.swift
//  Nuntium
//
//  Created by mehmet karanlık on 7.03.2023.
//

import SwiftUI
import DesignKit

struct AppsView: View {
   @State var text : String = ""
   @State var selectedChipIndex = 0
    var body: some View {
       VStack {
          PageSubTitle()
          VerticalSpace.medium()
          TopicGrid()
          Spacer()
       }

       .padding(PagePadding.horizontal.standart)
   }
}

struct AppsView_Previews: PreviewProvider {
    static var previews: some View {
        AppsView()
    }
}

private struct SearchField: View {
   @Binding var text : String
   var body: some View {
      SearchTextField(onSuffixTapped: {

      }, text: $text)
   }
}
