//
//  Count.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/14.
//

import SwiftUI

struct Count: View {
    var body: some View {
        VStack{
            ChildTextView().environmentObject(Countrepo())
            ChildButtonView()
                .environmentObject(Countrepo())
        }
    }
}
struct ChildTextView: View{
    @EnvironmentObject var countRepo:Countrepo
    var body: some View {
        Text("\(self.countRepo.count)").font(.largeTitle)
    }
}
struct ChildButtonView: View{
    @EnvironmentObject var countRepo:Countrepo
    var body: some View {
        Button("숫자 증가"){
            self.countRepo.count += 1
        }
    }
}
struct Count_Previews: PreviewProvider {
    static var previews: some View {
        Count()
    }
}
