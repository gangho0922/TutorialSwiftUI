//
//  toggle.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/14.
//

import SwiftUI

struct toggle: View {
    @State var ToggleOn: Bool = true
    var body: some View {
        VStack {
            ClildView(ToggleOn: $ToggleOn)
            if ToggleOn {
                Text("글자")
            }
        }
    }
}
struct ClildView : View {
    @Binding var ToggleOn: Bool
    var body: some View {
        Toggle(isOn: $ToggleOn){
            Text("글자를 가립니다")
        }.padding()
    }
}
struct toggle_Previews: PreviewProvider {
    static var previews: some View {
        toggle()
    }
}
