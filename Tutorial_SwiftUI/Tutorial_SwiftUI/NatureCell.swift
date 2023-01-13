//
//  NatureCell.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/13.
//

import SwiftUI

struct NatureCell: View {
    let nature: Nature
    var body: some View {
        HStack {
            Image(nature.image)
                .resizable()
                .frame(width: 100,height: 100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(nature.name).font(.largeTitle)
                Text("\(nature.numberof) 지점")
            }
        }
    }
}
