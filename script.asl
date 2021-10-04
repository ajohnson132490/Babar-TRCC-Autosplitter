state ("Start") {
	//Universial pointers
	int difficultySetting: "proj.dll", 0x010258, 0x4C, 0x0, 0x710, 0x0, 0xF0;
	int startIndicator: "IML32.dll", 0x9A764;

	//Level pointers
	int pointCounter: "proj.dll", 0x00010094, 0x554, 0x0, 0x5E0, 0x0, 0x170, 0x0, 0x50;
	int songSelector: "proj.dll", 0x0010258, 0x4C, 0x0, 0x600, 0x0, 0xC0;

}

startup
{

	settings.Add("split0", true, "The Soccer Field");
	settings.Add("split1", true, "The Beach");
	settings.Add("split2", true, "The Banana Grove");
	settings.Add("split3", true, "The Sunflower Maze");
	settings.Add("split4", true, "The Lake");
	settings.Add("split5", true, "The Celestville Fair");
	settings.Add("split6", true, "The Theater");
	settings.Add("split7", true, "Zaheer's Cake Store");

	Action<string> DebugOutput = (text) => {
		print("[B] "+text);
	};
	vars.DebugOutput = DebugOutput;

	bool[] splitsTemp = new bool[95];
	vars.splits = splitsTemp;
}

init {
	version = "";
	bool[] splitsTemp = new bool[15];
	vars.splits = splitsTemp;
	bool startTemp = false;

}

start {
	if (current.startIndicator == 3) {
		current.startTemp = true;
	}

	if (current.startTemp == true && current.startIndicator == 1) {
		current.startTemp = false;
		return true;
	}
}

split {
	if (!vars.splits[1] && current.pointCounter == 4) {
		//Soccer
		vars.splits[1] = true;
		print("Split 1");
		return true;
	} else if (!vars.splits[2] && vars.splits[1] == true && current.pointCounter == 9) {
		//Beach
		/*Point counter should go up to 10, but it loops at 9, so we use
		//vars.splits[10] to actually note when we have 10 points at the beach
		*/
		vars.splits[10] = true;
	} else if (!vars.splits[3] && vars.splits[2] == true && current.pointCounter == 3) {
		//Monkey
		vars.splits[3] = true;
		print("Split 3");
		return true;
	} else if (!vars.splits[4] && vars.splits[3] == true && current.pointCounter == 4) {
		//Flower Fields
		vars.splits[4] = true;
		print("Split 4");
		return true;
	} else if (!vars.splits[5] && vars.splits[4] == true && current.pointCounter == 3) {
		//Mountains
		vars.splits[5] = true;
		print("Split 5");
		return true;
	} else if (!vars.splits[6] && vars.splits[5] == true && current.pointCounter == 5) {
		//Carnival
		vars.splits[6] = true;
		print("Split 6");
		return true;
	} else if (!vars.splits[7] && vars.splits[6] == true && current.songSelector == 1) {
		//Music
		vars.splits[7] = true;
		print("Split 7");
		return true;
	} else if (!vars.splits[8] && vars.splits[7] == true && current.pointCounter == 5) {
		//Cake Shop
		vars.splits[8] = true;
		print("Split 8");
		return true;
	}

	//Actually getting the beach to split
	if (vars.splits[10] == true && current.pointCounter == 0) {
		vars.splits[2] = true;
		vars.splits[10] = false;
		print("Split 2");
		return true;
	}

}

update {
}
