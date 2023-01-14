//
//  NatureDetail.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/13.
//

import SwiftUI

struct NatureDetail: View {
    @State var pressure: Bool = false
    let nature: Nature
    var body: some View {
        VStack{
            Image(nature.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture(count: 2 ,perform: {
                    self.pressure = true
                })
            Text(nature.name)
        }.alert(isPresented: $pressure, content: {
            Alert(title: Text("더블클릭"), message: Text("하셨습니다!"), dismissButton: .default(Text("OK")))
        })
    }
}

struct NatureDetail_Previews: PreviewProvider {
    static let previewnature = Nature(name: "hello world!", image: "flower", numberof: 10000)
    static var previews: some View {
            NatureDetail(nature: previewnature)
    }
}
