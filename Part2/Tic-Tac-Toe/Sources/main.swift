// The Swift Programming Language
// https://docs.swift.org/swift-book

var pos1 = "1"
var pos2 = "2"
var pos3 = "3"
var pos4 = "4"
var pos5 = "5"
var pos6 = "6"
var pos7 = "7"
var pos8 = "8"
var pos9 = "9"

var winner = ""
var gameOver = false

var pos:Int = 0

var player:String = ""

var start = 0

play()

func play() {
    print("Welcome to Tic-Tac-Toe!")
    printBoard()

    while !gameOver {
    setPlayer()
    pos = askInput(player: player)
    setPos(pos: pos, player: player)
   
    printBoard()
   
    if checkWinner() {
        print ("Player \(winner) wins!")

        print()
        print("Do you want to play again? (y/n): ", terminator: "")
        let input = readLine()

        if input == "y" {
            reset()
        } else {
            print("Thanks for playing!")
            gameOver = true
        }
    }else{
        setPlayer()
        pos = askInput(player: player)
        setPos(pos: pos, player: player)
    
        printBoard()
    
        if checkWinner() {
            print ("Player \(winner) wins!")
            
            print()
            print("Do you want to play again? (y/n): ", terminator: "")
            let input = readLine()

            if input == "y" {
                reset()
            } else {
                print("Thanks for playing!")
                gameOver = true
            }
        }
   }
}
}

func reset() {
    pos1 = "1"
    pos2 = "2"
    pos3 = "3"
    pos4 = "4"
    pos5 = "5"
    pos6 = "6"
    pos7 = "7"
    pos8 = "8"
    pos9 = "9"

    winner = ""
    gameOver = false

    pos = 0

    player = ""

    start = 0

    play() 
}

func setPlayer(){
    if start == 0 {
        let random = Int.random(in: 1...2)
        if random == 1 {
            player = "X"
        } else {
            player = "O"
        }

        start = 1
    }

    if player == "X" {
        player = "O"
    } else {
        player = "X"
    }
}

func checkWinner() -> Bool {
    if pos1 == pos2 && pos2 == pos3 {
        winner = pos1
        return true
    } else if pos4 == pos5 && pos5 == pos6 {
        winner = pos4
        return true
    } else if pos7 == pos8 && pos8 == pos9 {
        winner = pos7
        return true
    } else if pos1 == pos4 && pos4 == pos7 {
        winner = pos1
        return true
    } else if pos2 == pos5 && pos5 == pos8 {
        winner = pos2
        return true
    } else if pos3 == pos6 && pos6 == pos9 {
        winner = pos3
        return true
    } else if pos1 == pos5 && pos5 == pos9 {
        winner = pos1
        return true
    } else if pos3 == pos5 && pos5 == pos7 {
        winner = pos3
        return true
    } else {
        return false
    }
}

func askInput(player: String) -> Int{
    print()
    print("Player \(player), enter a position: ", terminator: "")
    let input = readLine()
    
    return Int(input!)!
}

func setPos(pos: Int, player: String) {

    switch pos {
    case 1:
        if pos1 == "X" || pos1 == "O" {
            print("Position already taken")
            setPos(pos: askInput(player: player), player: player)
        } else {
            pos1 = player
        }
    case 2:
        if pos2 == "X" || pos2 == "O" {
            print("Position already taken")
            setPos(pos: askInput(player: player), player: player)
        } else {
            pos2 = player
        }
    case 3:
        if pos3 == "X" || pos3 == "O" {
            print("Position already taken")
            setPos(pos: askInput(player: player), player: player)
        } else {
            pos3 = player
        }
    case 4:
        if pos4 == "X" || pos4 == "O" {
            print("Position already taken")
            setPos(pos: askInput(player: player), player: player)
        } else {
            pos4 = player
        }
    case 5:
        if pos5 == "X" || pos5 == "O" {
            print("Position already taken")
            setPos(pos: askInput(player: player), player: player)
        } else {
            pos5 = player
        }
    case 6:
        if pos6 == "X" || pos6 == "O" {
            print("Position already taken")
            setPos(pos: askInput(player: player), player: player)
        } else {
            pos6 = player
        }
    case 7:
        if pos7 == "X" || pos7 == "O" {
            print("Position already taken")
            setPos(pos: askInput(player: player), player: player)
        } else {
            pos7 = player
        }
    case 8:
        if pos8 == "X" || pos8 == "O" {
            print("Position already taken")
            setPos(pos: askInput(player: player), player: player)
        } else {
            pos8 = player
        }
    case 9:
        if pos9 == "X" || pos9 == "O" {
            print("Position already taken")
            setPos(pos: askInput(player: player), player: player)
        } else {
            pos9 = player
        }
    default:
        print("Invalid position")
    }
}

func printBoard() {
    print()
    print()
    print(" \(pos1) | \(pos2) | \(pos3) ")
    print("-----------")
    print(" \(pos4) | \(pos5) | \(pos6) ")
    print("-----------")
    print(" \(pos7) | \(pos8) | \(pos9) ")
}