//
//  Type.swift
//  tdd-compiler
//
//  Created by Tony Toussaint on 11/4/19.
//  Copyright © 2019 Tony Toussaint. All rights reserved.
//

import Foundation

enum Type: Int {
    case int = 1
    case float = 2
    case string = 3
    case bool = 4
    case char = 5
    case void = 6
    case error = -1
}

extension Type {
    init(type: String) {
        switch type {
        case "int":
            self = .int
        case "string":
            self = .string
        case "bool":
            self = .bool
        case "char":
            self = .char
        case "float":
            self = .float
        case "void":
            self = .void
        default:
            self = .error
        }
    }
}
