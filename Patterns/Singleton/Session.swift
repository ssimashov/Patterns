//
//  Session.swift
//  Patterns
//
//  Created by Sergey Simashov on 21.12.2021.
//

import Foundation

class Session {
    
    static let instance = Session ()
    
    private init(){}
    
    var fio = ""
    var id = 0
    var money = 0
}
