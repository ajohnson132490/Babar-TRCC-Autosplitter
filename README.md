## Babar-TRCC-Autosplitter
Babar and The Royal Coin Caper Autosplitter

### State
Contains pointers to the difficulty setting, the points counter, and the song selector.
###### difficultySetting
Shows the current difficulty, easy or hard.

###### startIndicator
Changes when you go from one menu to another. At the beginning, it starts at 1, goes up to 3 when in the profile select screen, then goes back down to 1 when you select your difficulty and click "ok".

###### pointCounter
Shows how many points you have on a given level, as denoted by the green bubbles in the bottom left corner. This value resets to 0 when you exit a level.

###### songSelector
Shows what song, 1-4, you have selected in "The Theater". Initial value is 0 going into the level.

### Startup
Contains the settings, deciding what splits show up in your autosplitter by default, a debug function for outputting strings easily, and initializes the splits array.

### Init
Sets the version and initializes the splits array.

### Start
Starts the autosplitter.

### Split
A string of conditionals telling the program when to split based on point counter, and previous split.

### Update
Print statements for debugging.


###Known Bugs
-Does not split on ending split, still working on implimenting that functionality.
-Does not consistently split for the music split
