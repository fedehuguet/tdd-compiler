import Foundation

class SymbolTable {
    var functionsDictionary: Dictionary<String,Function> = [:]
    
    func insert(function: Function) {
        functionsDictionary[function.name] = function
    }
    
}


