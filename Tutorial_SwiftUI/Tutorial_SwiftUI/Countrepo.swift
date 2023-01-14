//
//  Countrepo.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/14.
//

import Foundation

class Countrepo: ObservableObject {
    var count: Int = 0 {
        willSet(newVal){
            print(newVal % 5)
            if(newVal % 5 == 0) {
                objectWillChange.send()
            }
        }
    }
    
}
