//: [Previous](@previous)


let message = "Hello! Shamim Khan"
let pattern = "hamim"

extension String {
    func indexOf(_ pattern: String) -> String.Index? {
        for i in self.characters.indices {
            var firstIndex = i
            var isPatternFound = true
            for j in pattern.characters.indices {
                if firstIndex == self.characters.endIndex || self[firstIndex] != pattern[j]  {
                    isPatternFound = false
                    break
                } else {
                    firstIndex = self.characters.index(after: firstIndex)
                }
            }
            
            if isPatternFound {
                return i
            }
        }
        return nil
    }
}

print(message.indexOf(pattern)?.encodedOffset)
