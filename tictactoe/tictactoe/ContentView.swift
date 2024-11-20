import SwiftUI

struct ContentView: View {
    @State private var gameBoard: [[String]] = [["", "", ""], ["", "", ""], ["", "", ""]]
    @State private var currentPlayer: String = "X"
    @State private var gameOver: Bool = false
    @State private var winner: String? = nil

    var body: some View {
        VStack(spacing: 20) {
            Text(gameOver ? (winner != nil ? "\(winner!) Wins!" : "It's a Draw!") : "Player \(currentPlayer)'s Turn")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            VStack(spacing: 10) {
                ForEach(0..<3) { row in
                    HStack(spacing: 10) {
                        ForEach(0..<3) { col in
                            Button(action: {
                                makeMove(row: row, col: col)
                            }) {
                                Text(gameBoard[row][col])
                                    .font(.system(size: 50))
                                    .frame(width: 80, height: 80)
                                    .background(Color.blue.opacity(0.3))
                                    .cornerRadius(10)
                                    .foregroundColor(.black)
                            }
                            .disabled(gameBoard[row][col] != "" || gameOver)
                        }
                    }
                }
            }

            if gameOver {
                Button("Restart Game") {
                    resetGame()
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .padding()
    }

    func makeMove(row: Int, col: Int) {
        guard gameBoard[row][col] == "" else { return }
        gameBoard[row][col] = currentPlayer
        
        if checkForWinner() {
            gameOver = true
            winner = currentPlayer
        } else if isBoardFull() {
            gameOver = true
            winner = nil
        } else {
            currentPlayer = (currentPlayer == "X") ? "O" : "X"
        }
    }

    func checkForWinner() -> Bool {
        // Check rows and columns
        for i in 0..<3 {
            if gameBoard[i][0] == currentPlayer && gameBoard[i][1] == currentPlayer && gameBoard[i][2] == currentPlayer {
                return true
            }
            if gameBoard[0][i] == currentPlayer && gameBoard[1][i] == currentPlayer && gameBoard[2][i] == currentPlayer {
                return true
            }
        }
        
        // Check diagonals
        if gameBoard[0][0] == currentPlayer && gameBoard[1][1] == currentPlayer && gameBoard[2][2] == currentPlayer {
            return true
        }
        if gameBoard[0][2] == currentPlayer && gameBoard[1][1] == currentPlayer && gameBoard[2][0] == currentPlayer {
            return true
        }
        
        return false
    }

    func isBoardFull() -> Bool {
        for row in gameBoard {
            if row.contains("") {
                return false
            }
        }
        return true
    }

    func resetGame() {
        gameBoard = [["", "", ""], ["", "", ""], ["", "", ""]]
        currentPlayer = "X"
        gameOver = false
        winner = nil
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
