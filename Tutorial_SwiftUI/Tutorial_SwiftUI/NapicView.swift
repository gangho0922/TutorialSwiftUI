//
//  NapicView.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/13.
//

import SwiftUI

struct NapicView: View {
    let natures = Nature.all()
    var body: some View {
        NavigationView {
            List(self.natures, id: \.name){
                Nature in
                NavigationLink(destination: NatureDetail(nature: Nature)){
                    NatureCell(nature: Nature)
                }
            }.navigationBarTitle("자연", displayMode: .inline)
        }
    }
}

struct NapicView_Previews: PreviewProvider {
    static var previews: some View {
        NapicView()
    }
}
