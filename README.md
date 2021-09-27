## Babar-TRCC-Autosplitter
Babar and The Royal Coin Caper Autosplitter

### State
Contains pointers to the difficulty setting, the points counter, and the song selector.
###### difficultySetting 
Shows the current difficulty, easy or hard.

###### pointCounter
Shows how many points you have on a given level, as denoted by the green bubbles in the bottom left corner. This value resets to 0 when you exit a level.

###### songSelector
Shows what song, 1-4, you have selected in "The Theater". Initial value is 0 going into the level.

### Startup
Contains the settings, deciding what splits show up in your autosplitter by default, a debug function for outputting strings easily, and initializes the splits array.

### Init
Sets the version and initializes the splits array.

### Split
A string of conditionals telling the program when to split based on point counter, and previous split.

### Update
Print statements for debugging.
