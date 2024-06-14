//
//  Memo.swift
//  Memoapp
//
//  Created by engn0383 on 2024/06/14.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content : String
    let insertDate : Date
    
    init(content: String , insert)
}
