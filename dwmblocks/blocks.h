//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
//	{"Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30,		0},
    {"Task Count:", "task count"       ,                    60,     0},
    {"Current Task:", "task next limit:1 sort:urgency | awk 'NR==4 {for (i=3; i<=NF-2; i++) printf \"%s \", $i; printf \"\\n\"}'"       ,                    60,     0},
	{"", "date '+%A -- %d/%m/%y -- %R'",					60,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
