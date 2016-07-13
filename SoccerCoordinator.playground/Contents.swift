import Foundation

// Created a basic Dictionary for the data that was given

let players =
              ["Joe Smith": [42, true, "Jim and Jan Smith"],
               "Jill Tanner": [36, true, "Clara Tanner"],
               "Bill Bon": [43, true, "Sara and Jenny Bon"],
               "Philip Helm": [44, true, "Thomas Helm and Eva Jones"],
               "Les Clay": [42, true, "Wynonna Brown"],
               "Herschel Krustofski": [45, true, "Hyman and Rachel Krustofski"],
               "Karl Saygan": [42, true, "Heather Biedsoe"],
               "Suzane Greenberg": [44, true, "Henrietta Dumas"],
               "Diego Soto": [41, true, "Robin and Sarika Soto"],
               "Eva Gordon": [45, false, "Wendy and Mike Gordon"],
               "Matt Gill": [40, false, "Charles and Sylvia Gill"],
               "Kimmy Stein": [41, false, "Bill and Hillary Stein"],
               "Sammy Adams": [45, false, "Jeff Adams"],
               "Sal Dali": [41, false, "Gala Dali"],
               "Joe Kavalier": [39, false, "Sam and Elaine Kavalier"],
               "Ben Finkelstein": [44, false, "Aaron and Jill Finkelstein"],
               "Chloe Alaska": [47, false, "David and Jamie Alaska"],
               "Arnold Willis": [43, false, "Claire Willis"]]




 func getExperiencedPlayers() -> Int {
    var experiencedPlayers = 0
    
    for playerDetails in players.values {
        if playerDetails[1] == true {
            experiencedPlayers += 1
        }
    }
    return experiencedPlayers
}

var experiencedPlayers = getExperiencedPlayers()
var inexperiencedPlayers = players.count - experiencedPlayers





var dragons = [String: Array<AnyObject>]()
var sharks = [String: Array<AnyObject>]()
var raptors = [String: Array<AnyObject>]()


for (key, value) in players {
    
    if dragons.count < players.count / 3 && dragons.count / 2 <= experiencedPlayers / 3 && dragons.count / 2 <= inexperiencedPlayers / 3 {
        dragons[key] = value
    } else if sharks.count < players.count / 3 && sharks.count / 2 <= experiencedPlayers / 3 && sharks.count / 2 <= inexperiencedPlayers / 3 {
        sharks[key] = value
    } else if raptors.count < players.count / 3 && raptors.count / 2 <= experiencedPlayers / 3 && raptors.count / 2  <= inexperiencedPlayers / 3 {
        raptors[key] = value
    } else {
        print("No spot on team")
    }
}



let dragonsPractice = "March 17 at 1PM"
let sharksPractice = "March 17 at 3PM"
let raptorsPractice = "March 18 at 1PM"

func welcomeLetter() {
    for (key, value) in dragons {
        print("Good afternoon \(value[2]), We are pleased to have \(key) playing for the Dragons this year! Our first practice will be on \(dragonsPractice). Can't wait to meet you and have a fantastic year!")
    }
    
    for (key, value) in sharks {
        print("Good afternoon \(value[2]), We are pleased to have \(key) playing for the Sharks this year! Our first practice will be on \(sharksPractice). Can't wait to meet you and have a fantastic year!")
    }
    
    for (key, value) in raptors {
        print("Good afternoon \(value[2]), We are pleased to have \(key) playing for the Sharks this year! Our first practice will be on \(raptorsPractice). Can't wait to meet you and have a fantastic year!")
    }
}

welcomeLetter()
