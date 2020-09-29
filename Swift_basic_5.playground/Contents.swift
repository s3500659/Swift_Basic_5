import UIKit

protocol Play {
    func play() -> String
}

enum MediaType {
    case CD, DVD, Bluray
}

struct Movie: Play {
    
    private let title:String
    private let year:Int
    private let runningTime:Double
    private let mediaType:MediaType
    
    init(title:String, year:Int, runningTime:Double, mediaType:MediaType) {
        self.title = title
        self.year = year
        self.runningTime = runningTime
        self.mediaType = mediaType
    }
    
    func play() -> String {
        var result = "The \(mediaType) entitled: " + title + " " + String(runningTime)
        result += " will play for: "
        result += String(runningTime)
        
        return result
    }
}

struct Dog:Play {
    
    private let name:String
    private let breed:String
    private let age:Int
    
    init(name:String, breed:String, age:Int) {
        self.name = name
        self.breed = breed
        self.age = age
    }
    
    func play() -> String {
        return "\(name) is rolling on the grass :)"
    }
}

let cd = Movie(title: "The Lion King (soundtrack)", year: 1994, runningTime: 146.21, mediaType: .CD)
let dvd = Movie(title: "The Lion King", year: 1994, runningTime: 128, mediaType: .DVD)
let bluray = Movie(title: "The Lion King", year: 2019, runningTime: 118, mediaType: .Bluray)

let fido = Dog(name: "Fido", breed: "Labrador", age: 8)

var mixedBag:[Play] = []

mixedBag.append(cd)
mixedBag.append(dvd)
mixedBag.append(bluray)
mixedBag.append(fido)

for (_, item) in mixedBag.enumerated() {
    print(item.play())
}








