//
//  main.swift
//  hangman_project
//
//  Created by Jason Ruan on 7/12/19.
//  Copyright © 2019 Jason Ruan. All rights reserved.
//

import Foundation

func generateAnswer() -> [Character] {
    let allTheWords = ["able", "about", "account", "acid", "across", "addition", "adjustment", "advertisement", "after", "again", "against", "agreement", "almost", "among", "amount", "amusement", "angle", "angry", "animal", "answer", "apparatus", "apple", "approval", "arch", "argument", "army", "attack", "attempt", "attention", "attraction", "authority", "automatic", "awake", "baby", "back", "balance", "ball", "band", "base", "basin", "basket", "bath", "beautiful", "because", "before", "behaviour", "belief", "bell", "bent", "berry", "between", "bird", "birth", "bite", "bitter", "black", "blade", "blood", "blow", "blue", "board", "boat", "body", "boiling", "bone", "book", "boot", "bottle", "brain", "brake", "branch", "brass", "bread", "breath", "brick", "bridge", "bright", "broken", "brother", "brown", "brush", "bucket", "building", "bulb", "burn", "burst", "business", "butter", "button", "cake", "camera", "canvas", "card", "care", "carriage", "cart", "cause", "certain", "chain", "chalk", "chance", "change", "cheap", "cheese", "chemical", "chest", "chief", "chin", "church", "circle", "clean", "clear", "clock", "cloth", "cloud", "coal", "coat", "cold", "collar", "colour", "comb", "come", "comfort", "committee", "common", "company", "comparison", "competition", "complete", "complex", "condition", "connection", "conscious", "control", "cook", "copper", "copy", "cord", "cork", "cotton", "cough", "country", "cover", "crack", "credit", "crime", "cruel", "crush", "current", "curtain", "curve", "cushion", "damage", "danger", "dark", "daughter", "dead", "dear", "death", "debt", "decision", "deep", "degree", "delicate", "dependent", "design", "desire", "destruction", "detail", "development", "different", "digestion", "direction", "dirty", "discovery", "discussion", "disease", "disgust", "distance", "distribution", "division", "door", "doubt", "down", "drain", "drawer", "dress", "drink", "driving", "drop", "dust", "early", "earth", "east", "edge", "education", "effect", "elastic", "electric", "engine", "enough", "equal", "error", "even", "event", "ever", "every", "example", "exchange", "existence", "expansion", "experience", "expert", "face", "fact", "fall", "false", "family", "farm", "father", "fear", "feather", "feeble", "feeling", "female", "fertile", "fiction", "field", "fight", "finger", "fire", "first", "fish", "fixed", "flag", "flame", "flat", "flight", "floor", "flower", "fold", "food", "foolish", "foot", "force", "fork", "form", "forward", "fowl", "frame", "free", "frequent", "friend", "from", "front", "fruit", "full", "future", "garden", "general", "girl", "give", "glass", "glove", "goat", "gold", "good", "government", "grain", "grass", "great", "green", "grey", "grip", "group", "growth", "guide", "hair", "hammer", "hand", "hanging", "happy", "harbour", "hard", "harmony", "hate", "have", "head", "healthy", "hear", "hearing", "heart", "heat", "help", "high", "history", "hole", "hollow", "hook", "hope", "horn", "horse", "hospital", "hour", "house", "humour", "idea", "important", "impulse", "increase", "industry", "insect", "instrument", "insurance", "interest", "invention", "iron", "island", "jelly", "jewel", "join", "journey", "judge", "jump", "keep", "kettle", "kick", "kind", "kiss", "knee", "knife", "knot", "knowledge", "land", "language", "last", "late", "laugh", "lead", "leaf", "learning", "leather", "left", "letter", "level", "library", "lift", "light", "like", "limit", "line", "linen", "liquid", "list", "little", "living", "lock", "long", "look", "loose", "loss", "loud", "love", "machine", "make", "male", "manager", "mark", "market", "married", "mass", "match", "material", "meal", "measure", "meat", "medical", "meeting", "memory", "metal", "middle", "military", "milk", "mind", "mine", "minute", "mist", "mixed", "money", "monkey", "month", "moon", "morning", "mother", "motion", "mountain", "mouth", "move", "much", "muscle", "music", "nail", "name", "narrow", "nation", "natural", "near", "necessary", "neck", "need", "needle", "nerve", "news", "night", "noise", "normal", "north", "nose", "note", "number", "observation", "offer", "office", "only", "open", "operation", "opinion", "opposite", "orange", "order", "organization", "ornament", "other", "oven", "over", "owner", "page", "pain", "paint", "paper", "parallel", "parcel", "part", "past", "paste", "payment", "peace", "pencil", "person", "physical", "picture", "pipe", "place", "plane", "plant", "plate", "play", "please", "pleasure", "plough", "pocket", "point", "poison", "polish", "political", "poor", "porter", "position", "possible", "potato", "powder", "power", "present", "price", "print", "prison", "private", "probable", "process", "produce", "profit", "property", "prose", "protest", "public", "pull", "pump", "punishment", "purpose", "push", "quality", "question", "quick", "quiet", "quite", "rail", "rain", "range", "rate", "reaction", "reading", "ready", "reason", "receipt", "record", "regret", "regular", "relation", "religion", "representative", "request", "respect", "responsible", "rest", "reward", "rhythm", "rice", "right", "ring", "river", "road", "roll", "roof", "room", "root", "rough", "round", "rule", "safe", "sail", "salt", "same", "sand", "scale", "school", "science", "scissors", "screw", "seat", "second", "secret", "secretary", "seed", "seem", "selection", "self", "send", "sense", "separate", "serious", "servant", "shade", "shake", "shame", "sharp", "sheep", "shelf", "ship", "shirt", "shock", "shoe", "short", "shut", "side", "sign", "silk", "silver", "simple", "sister", "size", "skin", "skirt", "sleep", "slip", "slope", "slow", "small", "smash", "smell", "smile", "smoke", "smooth", "snake", "sneeze", "snow", "soap", "society", "sock", "soft", "solid", "some", "song", "sort", "sound", "soup", "south", "space", "spade", "special", "sponge", "spoon", "spring", "square", "stage", "stamp", "star", "start", "statement", "station", "steam", "steel", "stem", "step", "stick", "sticky", "stiff", "still", "stitch", "stocking", "stomach", "stone", "stop", "store", "story", "straight", "strange", "street", "stretch", "strong", "structure", "substance", "such", "sudden", "sugar", "suggestion", "summer", "support", "surprise", "sweet", "swim", "system", "table", "tail", "take", "talk", "tall", "taste", "teaching", "tendency", "test", "than", "that", "then", "theory", "there", "thick", "thin", "thing", "this", "thought", "thread", "throat", "through", "through", "thumb", "thunder", "ticket", "tight", "till", "time", "tired", "together", "tomorrow", "tongue", "tooth", "touch", "town", "trade", "train", "transport", "tray", "tree", "trick", "trouble", "trousers", "true", "turn", "twist", "umbrella", "under", "unit", "value", "verse", "very", "vessel", "view", "violent", "voice", "waiting", "walk", "wall", "warm", "wash", "waste", "watch", "water", "wave", "weather", "week", "weight", "well", "west", "wheel", "when", "where", "while", "whip", "whistle", "white", "wide", "will", "wind", "window", "wine", "wing", "winter", "wire", "wise", "with", "woman", "wood", "wool", "word", "work", "worm", "wound", "writing", "wrong", "year", "yellow", "yesterday", "young"]
    
    let answer: [Character] = Array(allTheWords.randomElement()!)
    return answer
}

func generatePic() -> [[String]] {
    let arr1 = [String(repeatElement("-", count: 10))]
    let arr2 = ["|", String(repeatElement(" ", count: 8)), "|"]
    let arr3 = ["|", String(repeatElement(" ", count: 8)), " "]
    let arr4 = ["|", String(repeatElement(" ", count: 7)), " ", " ", " "]
    let arr5 = ["|", String(repeatElement(" ", count: 7)), " ", " ", " "]
    let arr6 = ["|", " "]
    let arr7 = ["|", " "]
    let arr8 = [String(repeatElement("-", count: 4))]
    let hangedMan = [arr1,arr2,arr3,arr4,arr5,arr6,arr7,arr8]
    return hangedMan
}

func printPic(_ pic: [[String]]) {
    for array in pic {
        print(array.joined())
    }
}

func getInput() -> String? {
    print("Pick a letter: ", terminator: "")
    let input = readLine()
    return input
}

//shows the parts of the answer as the user correctly guesses a letter
func generateDisplay(_ num: Int) -> [Character] {
    var publicDisplay = [Character]()
    for _ in 0..<num {
        publicDisplay.append("_")
    }
    return publicDisplay
}

//checks whether the user has won or lost and then asks if user wants to play again
func checkGameStatus(_ userDisplay: [Character], _ answer: [Character], _ numGuesses: Int) -> Bool {
    var anotherRound: Bool = false
    var userResponse: Bool = false
    
    if userDisplay == answer {
        print("Congratulations! You won in \(numGuesses) guesses!\nWould you like to play again? y: yes      n: no")
    } else {
        print("Game over! The correct answer was: \(String(answer))\nWould you like to play again? y: yes      n: no")
    }
    
    while userResponse == false {
        let playAgain = getInput()
        if let playAgain = playAgain {
            if playAgain == "y" || playAgain == "Y" {
                anotherRound = true
                userResponse = true
                print("\n")
            } else if playAgain == "n" || playAgain == "N" {
                anotherRound = false
                userResponse = true
            } else {
                print("Sorry, that is not a valid option. Enter 'y' to play again or 'n' to stop.")
            }
        }
    }
    return anotherRound
}

//main game function
func gameStart() {
    var numGuesses = 0
    var wrongGuesses = 0
    var remainingGuesses = 6
    var usedLetters = [Character]()
    let alphabet = "qwertyuiopasdfghjklzxcvbnm"
    let answer = generateAnswer()
//    print(answer)       //just for testing purposes
    var hangedMan = generatePic()
    var userDisplay = generateDisplay(answer.count)
    
    printPic(hangedMan)

    while wrongGuesses < 6 && userDisplay != answer {
        //get input from user
        if let userInput = getInput() {
            //stop user from typing more than one character as input
            if userInput.count != 1 {
                print("Sorry, only a single letter is allowed")
                continue
            }
            //runs subsequent actions if user has chosen a letter
            if alphabet.contains(userInput.lowercased()) {
                //stop user from choosing a letter that has already been used
                if usedLetters.contains(Character(userInput.lowercased())) {
                    print("That letter has already been used. Choose another besides: \(usedLetters).")
                    continue
                }
                //tracks how many valid guesses user has tried and adds userInput to the usedLetter bank
                numGuesses += 1
                usedLetters.append(Character(userInput.lowercased()))
                
                //if user correctly guessed a letter in the answer - reveal where the letter is in the answer
                if answer.contains(Character(userInput.lowercased())) {
                    for i in 0..<answer.count where answer[i] == Character(userInput.lowercased()) {
                        userDisplay[i] = Character(userInput.lowercased())
                    }
                    print("\nThese letters have already been used: \(usedLetters)\nYou have \(remainingGuesses) lives left.")
                    printPic(hangedMan)
                    print(userDisplay)
                //if user has incorrectly guessed a letter - add part to hangedMan in game
                } else {
                    wrongGuesses += 1
                    switch wrongGuesses {
                    case 1:
                        //add head
                        hangedMan[2][2] = "O"
                    case 2:
                        //add body
                        hangedMan[3][3] = "|"
                    case 3:
                        //add left arm
                        hangedMan[3][2] = "-"
                    case 4:
                        //add right arm
                        hangedMan[3][4] = "-"
                    case 5:
                        //add left leg
                        hangedMan[4][2] = "\u{2F}"
                    case 6:
                        //add right leg
                        hangedMan[4][4] = "\u{5C}"
                    default:
                        continue
                    }
                    remainingGuesses -= 1
                    print("\nThese letters have already been used: \(usedLetters)\nYou have \(remainingGuesses) lives left.")
                    printPic(hangedMan)
                    print(userDisplay)
                }
            //if the user has input a single character response that is not a letter in the alphabet
            } else {
                print("'\(userInput)' is not a valid option")
            }
        }
    }
    //game has ended, time to check if the user has won or lost, and then start another game if user wants to play again, else this is the end of the program.
    if checkGameStatus(userDisplay, answer, numGuesses) {
        gameStart()
    }
}

gameStart()

