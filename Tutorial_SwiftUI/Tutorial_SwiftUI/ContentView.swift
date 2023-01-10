//
//  ContentView.swift
//  SwiftUI_tutorial
//
//  Created by AnnKangHo on 2023/01/10.
//
import SwiftUI

struct ContentView: View {
    
    @State var name = ""
    @State var age = ""
    @State var kk = ""
    
    
    var body: some View {
        NavigationView{
            Form{
                Section{
                    TextField("이름을 입력해주세요", text: $name)
                        .keyboardType(.default)
                }
                Section{
                    TextField("나이를 입력해주세요", text: $age)
                        .keyboardType(.numberPad)
                }
                Section{
                    TextField("특징을 입력해주세요", text: $kk)
                    Text("dd    ")
                }
                Section{
                    Text("\(name)님의 나이는 \(age)살입니다. 특징은 \(kk)입니다.")
                }
            }.navigationBarTitle("show N and A")
        }
    }
}


