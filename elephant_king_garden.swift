import UIKit

//Classes
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

class Counseling {
    var person: Person
    var currentSituation: String
    var desiredOutcome: String
    var adviceGiven: Bool
    
    init(person: Person, currentSituation: String, desiredOutcome: String, adviceGiven: Bool) {
        self.person = person
        self.currentSituation = currentSituation
        self.desiredOutcome = desiredOutcome
        self.adviceGiven = adviceGiven
    }
}

class Coaching {
    var person: Person
    var lifeGoals: String
    var objectivesSet: Bool
    var progressMade: Bool
    
    init(person: Person, lifeGoals: String, objectivesSet: Bool, progressMade: Bool) {
        self.person = person
        self.lifeGoals = lifeGoals
        self.objectivesSet = objectivesSet
        self.progressMade = progressMade
    }
}

//Functions
func assessSituation(person: Person, currentSituation: String) -> Bool {
    let assessment: Bool = true
    
    if assessment {
        return true
    } else {
        return false
    }
}

func discussOutcome(person: Person, desiredOutcome: String) -> Bool {
    print("We discussed the desired outcome and agreed it was feasible")
    return true
}

func provideAdvice(person: Person, adviceGiven: Bool) -> Bool {
    if adviceGiven {
        print("Advice was provided and successfully implemented")
        return true
    } else {
        print("Advice was not successfully implemented")
        return false
    }
}

func setGoals(person: Person, lifeGoals: String) -> Bool {
    print("We established life goals and set objectives to achieve them")
    return true
}

func trackProgress(person: Person, progressMade: Bool) -> Bool {
    if progressMade {
        print("Progress is being tracked and is looking positive")
        return true
    } else {
        print("Progress is not being tracked")
        return false
    }
}

func findInnerWisdom(person: Person) -> Bool {
    print("We have looked within and found inner wisdom and clarity")
    return true
}

// Main
let john = Person(name: "John", age: 35)
let johnsSituation = Counseling(person: john, currentSituation: "John is feeling lost and confused.", desiredOutcome: "John wants to find inner wisdom and clarity.", adviceGiven: false)

let assessment = assessSituation(person: john, currentSituation: johnsSituation.currentSituation)

if assessment {
    let discussedOutcome = discussOutcome(person: john, desiredOutcome: johnsSituation.desiredOutcome)
    if discussedOutcome {
        let providedAdvice = provideAdvice(person: john, adviceGiven: johnsSituation.adviceGiven)
        if providedAdvice {
            let setGoals = setGoals(person: john, lifeGoals: johnsSituation.desiredOutcome)
            if setGoals {
                let trackedProgress = trackProgress(person: john, progressMade: johnsSituation.adviceGiven)
                if trackedProgress {
                    let innerWisdom = findInnerWisdom(person: john)
                    if innerWisdom {
                        print("John has successfully navigated life's challenges and found inner wisdom and clarity.")
                    }
                }
            }
        }
    }
}