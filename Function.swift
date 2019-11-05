class Function {
    let id : String
    let type : String
    let scope : String
    let next : UnsafeMutablePointer<Function>

    init(id : String, type: String, scope: String) {
        self.id = id
        self.type = type
        self.scope = scope
        self.next = nil
    }
}