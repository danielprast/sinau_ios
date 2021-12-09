struct LearnUnitTest {
    var text = "Hello, World!"
}

struct Hater {
    var hating = false
    
    mutating func hadABadDay() {
        hating = true
    }
    
    mutating func hadAGoodDay() {
        hating = false
    }
}

enum DataOrigin {
    case masterOrigin(source: String)
    case slaveOrigin(length: Int)
    case customOrigin(title: String)
}

//struct DataOriginPreview {
//    var dataOrigin: DataOrigin = .customOrigin(title: "John")
//
//    func previewData() -> String {
//        print("🤓 Data: \(dataOrigin)")
//        switch dataOrigin {
//        case .masterOrigin(let source):
//            return source
//        case .slaveOrigin(length):
//            return "\(length)"
//        case .customOrigin(title):
//            return title
//        default:
//            return "zero"
//        }
//    }
//}
