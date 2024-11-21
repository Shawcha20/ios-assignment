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

![Screenshot 2024-11-19 at 3 51 09 PM](https://github.com/user-attachments/assets/6fb724d9-d9f7-4e81-a607-8432e7377059)
![Screenshot 2024-11-19 at 3 52 16 PM](https://github.com/user-attachments/assets/094a7ace-5d2a-4a89-ba34-3c056df9be5a)
![Screenshot 2024-11-19 at 3 53 15 PM](https://github.com/user-attachments/assets/835cb8de-129b-4029-9a04-009c483437cf)
![Simulator Screen Shot - iPod touch (7th generation) - 2024-11-19 at 15 48 50](https://github.com/user-attachments/assets/c02a722c-4272-424e-8d05-ccf1b986718b)
