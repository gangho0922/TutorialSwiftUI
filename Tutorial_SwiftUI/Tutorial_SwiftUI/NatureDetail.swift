//
//  NatureDetail.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/13.
//

import SwiftUI

struct NatureDetail: View {
   let nature: Nature
    var body: some View {
        VStack{
            Image(nature.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct NatureDetail_Previews: PreviewProvider {
    static let previewnature = Nature(name: "hello world!", image: "flower", numberof: 10000)
    static var previews: some View {
            NatureDetail(nature: previewnature)
    }
}
