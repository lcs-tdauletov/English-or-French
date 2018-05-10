import Foundation


// INPUT
var expectedLines = 0
while true {
    
    print("How many lines")
    
    guard let someString = readLine() else {
        continue
    }
    
    guard let intExpectedLines = Int(someString) else  {
        continue
    }
    
    if intExpectedLines > 10_000 || intExpectedLines < 1 {
        continue
    }
    
    // All tests passed, so assign to global variable
    expectedLines = intExpectedLines
    break
    
}

// PROCESS
var frenchCharacterCount = 0
var englishCharacterCount  = 0
for _ in 1...expectedLines {
    
    guard let givenLine = readLine() else {
        
        continue
    }
    for character in givenLine {
        switch character {
        case "S", "s":
            frenchCharacterCount += 1
        case "T", "t" :
            englishCharacterCount  += 1
        default:
            continue
        }
        
    }
}

// OUTPUT

if englishCharacterCount  == frenchCharacterCount || englishCharacterCount  < frenchCharacterCount {
    print("Probably, it's French text")
    exit(9)
} else {
    print("Probably, it's English text")
    exit(9)
}


