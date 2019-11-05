class SymbolTable<Element> {
    let symbols : [UnsafeMutablePointer<Element>]()
    let size : Int
    
    init(size: Int){
        self.size = size
        for i in 0...self.size {
            self.symbols[i] = nil
        }
    }

    func hash(id: String) -> Int {
        let unicodeSum = 0
        for char in id.unicodeScalars {
            unicodeSum += char.value
        }

        return unicodeSum % self.size
    }

    func insert(symbol: UnsafeMutablePointer<Element>) -> Bool {
        let index = self.hash(symbol.id)

        if (self.symbols[index] == nil) {
            self.symbols[index] = symbol
            return true
        }
        else {
            let start = self.symbols[index]
            while start.next != nil {
                start = start.next
            }
            start.next = symbol
            return true
        }
        
        return false
    }
}