//
//  PictureView.swift
//  Tutorial_SwiftUI
//
//  Created by AnnKangHo on 2023/01/13.
//

import SwiftUI

struct Nature {
    let name: String
    let image: String
    let numberof: Int
}
extension Nature {
    static func all() -> [Nature] {
        return [
            Nature(name: "꽃", image: "flower" , numberof: 2000),
            Nature(name: "길", image: "road" , numberof: 2100),
            Nature(name: "나무", image: "tree" , numberof: 2200)
        ]
    }
}
