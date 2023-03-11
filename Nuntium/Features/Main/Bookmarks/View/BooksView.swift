//
//  BooksView.swift
//  Nuntium
//
//  Created by mehmet karanlık on 7.03.2023.
//

import SwiftUI
import DesignKit

struct BooksView: View {
    var body: some View {
       VStack {
          PageSubTitle()
          VerticalSpace.medium()
          BookMarkList()
       }
       .padding(PagePadding.horizontal.standart)
       .scrollable()
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView()
    }
}

struct BookMarkList: View {
   var body: some View {
      ForEach(0..<10) { _ in
         BookMarkTile()
      }
   }
}
