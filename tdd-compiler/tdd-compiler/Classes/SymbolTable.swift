import Foundation

class SymbolTable {
    var functionsDictionary: Dictionary<String,Function> = [:]
    
    func insert(function: Function) {
        self.functionsDictionary[function.name] = function
    }
    
    func findID(scope: String, id: String) -> Variable? {
        guard let function = self.functionsDictionary[scope] else {
            return nil
        }
        //Check in current scope
        var return_var = self.findVar(id: id, variables: function.variables)
        //Check in global scope
        if return_var == nil {
            guard let function = self.functionsDictionary["global"] else {
                return nil
            }
            return_var = self.findVar(id: id, variables: function.variables)
        }
        return return_var
    }
    
    private func findVar(id: String, variables: [Variable]) -> Variable? {
        for variable in variables {
            if variable.name == id {
                return variable
            }
        }
        return nil
    }
    
}


