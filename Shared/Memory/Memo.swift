//
//  Memo.swift
//  swiftMemo
//
//  Created by daeun on 2022/10/02.
//

import Foundation
import SwiftUI

class Memo : Identifiable, ObservableObject {
    let id: UUID
    @Published var content : String
    let insertDate: Date
    
    init(content : String, insertDate: Date = Date.now){
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
