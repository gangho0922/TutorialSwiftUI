//
//  VSHSView.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/12.
//

import SwiftUI

struct VSHSView: View {
    var body: some View {
        ZStack{
            AngularGradient(gradient:  Gradient(colors: [.red,.orange,.yellow,.green,.blue,.purple]), center: .center)
                .edgesIgnoringSafeArea(.all)
            HStack{
                VStack{
                    Text("11시")
                    Spacer().frame(height:350)
                    Text("9시")
                    Spacer().frame(height:350)
                    Text("7시")
                }
                Spacer()
                VStack{
                    Text("12시")
                    Spacer().frame(height:350)
                    Text("중앙")
                    Spacer().frame(height:350)
                    Text("6시")
                }
                Spacer()
                VStack{
                    Text("1시")
                    Spacer().frame(height:350)
                    Text("3시")
                    Spacer().frame(height:350)
                    Text("5시")
                }
            }
        }
    }
}

struct VSHSView_Previews: PreviewProvider {
    static var previews: some View {
        VSHSView()
    }
}
