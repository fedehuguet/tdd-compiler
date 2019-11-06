class Function {
    let name : String
    let type : Type
    let scope : String
    let address: Int
    var variables : [Variable] = [Variable]()

    init(name : String, type: Type, scope: String, address: Int) {
        self.name = name
        self.type = type
        self.scope = scope
        self.address = address
    }
}
