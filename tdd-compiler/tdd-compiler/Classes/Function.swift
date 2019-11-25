class Function {
    let name : String
    let type : Type
    let scope : String
    var variables : [Variable] = [Variable]()
    var input_total : Int = 0
    var start_quadruple: Int = -1
    var return_address: Int = -1

    init(name : String, type: Type, scope: String) {
        self.name = name
        self.type = type
        self.scope = scope
    }
    
    func addInput() {
        self.input_total = self.input_total + 1
    }
    
    func setReturnAddress(address: Int) {
        self.return_address = address
    }
    
    func fillInitialQuad(start_quadruple: Int) {
        self.start_quadruple = start_quadruple
    }
}
