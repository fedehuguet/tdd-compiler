import Foundation

class SemanticCube {
    let cube: [[[Type]]] =
        [   // +
            [   //Type.int      Type.float      Type.string     Type.bool       Type.char
                [Type.int, Type.float, Type.error, Type.error, Type.error],
                [Type.float, Type.float, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.string, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error]
            ],
            // -, /, *
            [   //Type.int      Type.float      Type.string     Type.bool       Type.char
                [Type.int, Type.float, Type.error, Type.error, Type.error],
                [Type.float, Type.float, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
            ],
            // =
            [   //Type.int      Type.float      Type.string     Type.bool       Type.char
                [Type.int, Type.float, Type.error, Type.error, Type.error],
                [Type.float, Type.float, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.string, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.bool, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.char]
            ],
            // ==, !=
            [   //Type.int      Type.float      Type.string     Type.bool       Type.char
                [Type.bool, Type.bool, Type.error, Type.error, Type.error],
                [Type.bool, Type.bool, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.bool, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.bool, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.bool],
            ],
            // >, < >=, <=
            [   //Type.int      Type.float      Type.string     Type.bool       Type.char
                [Type.bool, Type.bool, Type.error, Type.error, Type.error],
                [Type.bool, Type.bool, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
            ],
            // &&, ||
            [   //Type.int      Type.float      Type.string     Type.bool       Type.char
                [Type.error, Type.error, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.bool, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
            ],
            // unary
            [   //Type.int      Type.float      Type.string     Type.bool       Type.char
                [Type.int, Type.float, Type.error, Type.error, Type.error],
                [Type.float, Type.float, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
                [Type.error, Type.error, Type.error, Type.error, Type.error],
            ],
        ]
    
    // Return true if it is a valid operation with the given types
    func checkCube(currOperator: String, leftType: Type, rightType: Type) -> Bool {
        switch currOperator {
        case "+":
            return cube[0][leftType.rawValue - 1][rightType.rawValue - 1] != Type.error
        case "/", "-", "*":
            return cube[1][leftType.rawValue - 1][rightType.rawValue - 1] != Type.error
        case "=":
            return cube[2][leftType.rawValue - 1][rightType.rawValue - 1] != Type.error
        case "==", "!=":
            return cube[3][leftType.rawValue - 1][rightType.rawValue - 1] != Type.error
        case ">", "<", "<=", ">=":
            return cube[4][leftType.rawValue - 1][rightType.rawValue - 1] != Type.error
        case "&&", "||":
            return cube[5][leftType.rawValue - 1][rightType.rawValue - 1] != Type.error
        case "unary":
            return cube[6][leftType.rawValue - 1][rightType.rawValue - 1] != Type.error
        default:
            return false
        }
    }
    
    func getResultType(currOperator: String, leftType: Type, rightType: Type) -> Type {
        switch currOperator {
               case "+":
                   return cube[0][leftType.rawValue - 1][rightType.rawValue - 1]
               case "/", "-", "*":
                   return cube[1][leftType.rawValue - 1][rightType.rawValue - 1]
               case "=":
                   return cube[2][leftType.rawValue - 1][rightType.rawValue - 1]
               case "==", "!=":
                   return cube[3][leftType.rawValue - 1][rightType.rawValue - 1]
               case ">", "<", "<=", ">=":
                   return cube[4][leftType.rawValue - 1][rightType.rawValue - 1]
               case "&&", "||":
                   return cube[5][leftType.rawValue - 1][rightType.rawValue - 1]
               case "unary":
                   return cube[6][leftType.rawValue - 1][rightType.rawValue - 1]
               default:
                return .error
               }
    }
}
