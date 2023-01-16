//
//  AnimateView.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/16.
//

import SwiftUI

struct AnimateView: View {
    @State var show = false
    var body: some View {
        VStack{
            Text("flower")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(4)
            Image("flower")
                .frame(width: show ? 414 : 300, height: show ? 600 : 300)
                .clipped()
                .cornerRadius(show ? 0 : 30)
                .shadow(radius: 30)
                .blur(radius: show ? 0 : 30)
                .animation(.spring())
            Text("focus flower")
                .font(.subheadline)
                .fontWeight(.regular)
                .foregroundColor(Color.gray)
                .scaleEffect(show ? 2 : 1)
                .animation(.spring())
                .padding(4)
            Button(action: {
                withAnimation {
                    self.show.toggle()}
                }) {
                Text("Animate")
            }
        }
    }
}

struct AnimateView_Previews: PreviewProvider {
    static var previews: some View {
        AnimateView()
    }
}
