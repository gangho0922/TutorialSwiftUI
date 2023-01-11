//
//  SignupView.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/11.
//

import SwiftUI

struct SignupView: View {
    
    let gendertype = ["남성", "여성", "비밀"]
    @State var name1 = ""
    @State var bornIn = 0
    @State var gender = 0
    var resultScript:String{
        if(name1.isEmpty){
            return "이름을 입력해주세요."
        }else{
            return "\(name1) 님은 성별이 \(gendertype[gender])이며 나이는 \(120-bornIn)입니다."
        }
    }
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("이름")){
                    TextField("이름을 입력해주세요",text:$name1)
                        .keyboardType(.default)
                }
                Section(header: Text("생년월일")){
                    Picker("출생년도",selection: $bornIn){
                        ForEach(1900..<2019){
                            Text("\(String($0))년생")
                        }
                    }
                }
                Section(header: Text("성별")){
                    Picker("성별",selection: $gender){
                        ForEach(0 ..< gendertype.count){
                            Text("\(self.gendertype[$0])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("결과")){
                    Text("\(resultScript)")
                }
            }.navigationBarTitle("회원가입")
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
