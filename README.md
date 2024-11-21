Features:
1.Interactive game board for 2 players.Each can make thier move in 3x3 grid
2.The game alternates between player X and player Y
3.The app determines who is winner or the game is draw
4.There is a restart option for play the game again

Main Components:
1. Game board: The board is 3x3 grid where each cell is a button . A player's move updates the grid and check for the games' status
2. Game Logic: The logic check for a winner or a draw after each move. The winner is declared if a player aligns three symbols horizontally , vertically or diagonally.
3. Game stats: The game is managed using @state variable in swiftUI:
i) A 2D board to store the current state of the board.
ii) Tracks whose turn it is now.
iii) indicate whether the game is ended
iv) Stores the winner
4. Player can reset the board and restart the game at any time.

Code overview:
user interface:
1. The UI is built using swiftui vStack and HStack for layout management.
2. Buttons represent each cell on the board. They display the player's move and are disabled once a cell is occupied or the game ends

I have added some screenshot of the assignment in this github. I write the code in XCODE version 12.1.1 which supports ipod 9th gen emulator.

Design:
![Screenshot 2024-11-19 at 3 50 04 PM](https://github.com/user-attachments/assets/33319940-3173-4ae2-9293-47b648d5a74e)

