class SemanticCube {
    const cube: [[[Type]]]() = 
    [   // +
        [   //Type.int      Type.float      Type.string     Type.bool       Type.char
            [Type.int,      [Type.float,    [Type.error,    [Type.error,    [Type.error,      //Type.int
             Type.float,     Type.float,     Type.error,     Type.error,     Type.error,      //Type.float
             Type.error,     Type.error,     Type.string,    Type.error,     Type.error,      //Type.string
             Type.error,     Type.error,     Type.error,     Type.error,     Type.error,      //Type.bool
             Type.error]     Type.error]     Type.error]     Type.error]     Type.error]      //Type.char
        ],
        // -, /, *
        [   //Type.int      Type.float      Type.string     Type.bool       Type.char
            [Type.int,      [Type.float,    [Type.error,    [Type.error,    [Type.error,      //Type.int
             Type.float,     Type.float,     Type.error,     Type.error,     Type.error,      //Type.float
             Type.error,     Type.error,     Type.error,     Type.error,     Type.error,      //Type.string
             Type.error,     Type.error,     Type.error,     Type.error,     Type.error,      //Type.bool
             Type.error]     Type.error]     Type.error]     Type.error]     Type.error]      //Type.char
        ],
        // =
        [   //Type.int      Type.float      Type.string     Type.bool       Type.char
            [Type.int,      [Type.float,    [Type.error,    [Type.error,    [Type.error,      //Type.int
             Type.float,     Type.float,     Type.error,     Type.error,     Type.error,      //Type.float
             Type.error,     Type.error,     Type.string,    Type.error,     Type.error,      //Type.string
             Type.error,     Type.error,     Type.error,     Type.bool,      Type.error,      //Type.bool
             Type.error]     Type.error]     Type.error]     Type.error]     Type.char]       //Type.char
        ],
        // ==, !=
        [   //Type.int      Type.float      Type.string     Type.bool       Type.char
            [Type.bool,     [Type.bool,     [Type.error,    [Type.error,    [Type.error,      //Type.int
             Type.bool,      Type.bool,      Type.error,     Type.error,     Type.error,      //Type.float
             Type.error,     Type.error,     Type.bool,      Type.error,     Type.error,      //Type.string
             Type.error,     Type.error,     Type.error,     Type.bool,      Type.error,      //Type.bool
             Type.error]     Type.error]     Type.error]     Type.error]     Type.bool]       //Type.char
        ],
        // >, <. >=, <=
        [   //Type.int      Type.float      Type.string     Type.bool       Type.char
            [Type.bool,     [Type.bool,    [Type.error,    [Type.error,    [Type.error,      //Type.int
             Type.bool,      Type.bool,     Type.error,     Type.error,     Type.error,      //Type.float
             Type.error,     Type.error,    Type.error,     Type.error,     Type.error,      //Type.string
             Type.error,     Type.error,    Type.error,     Type.error,     Type.error,      //Type.bool
             Type.error]     Type.error]    Type.error]     Type.error]     Type.error]      //Type.char
        ],
        // &&, ||
        [   //Type.int      Type.float      Type.string     Type.bool       Type.char
            [Type.error,    [Type.error,    [Type.error,    [Type.error,    [Type.error,      //Type.int
             Type.error,     Type.error,     Type.error,     Type.error,     Type.error,      //Type.float
             Type.error,     Type.error,     Type.error,     Type.error,     Type.error,      //Type.string
             Type.error,     Type.error,     Type.error,     Type.bool,      Type.error,      //Type.bool
             Type.error]     Type.error]     Type.error]     Type.error]     Type.error]      //Type.char
        ],
        // unary
        [   //Type.int      Type.float      Type.string     Type.bool       Type.char
            [Type.int,      [Type.float,    [Type.error,    [Type.error,    [Type.error,      //Type.int
             Type.float,     Type.float,     Type.error,     Type.error,     Type.error,      //Type.float
             Type.error,     Type.error,     Type.error,     Type.error,     Type.error,      //Type.string
             Type.error,     Type.error,     Type.error,     Type.error,     Type.error,      //Type.bool
             Type.error]     Type.error]     Type.error]     Type.error]     Type.error]      //Type.char
        ],
    ]
}