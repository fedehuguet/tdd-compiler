class Function {
    let name : String
    let type : Type
    let scope : String
    var start_quadruple: Int = -1
    var variables : [Variable] = [Variable]()

    init(name : String, type: Type, scope: String) {
        self.name = name
        self.type = type
        self.scope = scope
    }
    
    func fillInitialQuad(start_quadruple: Int) {
        self.start_quadruple = start_quadruple
    }
}
