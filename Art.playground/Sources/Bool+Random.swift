import Foundation

public extension Bool {
    
    /// Returns `true` with a probability of 1 in X chances
    static func random(in length: Int) -> Bool {
        guard let range = Range(NSRange(location: 0, length: length-1)) else {
            return false
        }
        
        return Int.random(in: range) == 0
    }
}
