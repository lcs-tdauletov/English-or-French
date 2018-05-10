import Foundation


var countTheSs = 0
var countTheTs = 0

while true {
    
    print("How many lines")
    
    guard let expectedLines = readLine() else {
        continue
    }
    
    guard let intExpectedLines = Int(expectedLines) else  {
        continue
    }
    
    if intExpectedLines > 10_000 || intExpectedLines < 1 {
        continue
    }
    
    
for _ in 1...intExpectedLines {
  
    guard let givenLine = readLine() else {
       
        continue
    }
    for character in givenLine {
        switch character {
            case "S", "s":
            countTheSs += 1
            case "T", "t" :
            countTheTs += 1
            default:
            continue
        }
        
    }
}
    if countTheTs == countTheSs || countTheTs < countTheSs {
        print("Probably, it's French text")
    } else {
        print("Probably, it's English text")
    }
    
}



