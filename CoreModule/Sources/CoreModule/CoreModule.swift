public struct CoreModuleHelper {
    public var text = "Hello, World!"
}

public struct CoreHelper {
    
    public init() {}
    
    public private(set) var value = 0
    
    public mutating func tuneHelper() {
        value += 1
        print("😶‍🌫️ value = \(value)")
    }
}
