state("game"){
	int loading: "Game.dll", 0x0009724C, 0x8, 0x80, 0x1C, 0x8, 0xA8;
}

isLoading{
	return current.loading != 0;
}

split{
	if(old.loading == 0 && current.loading == 2)return true;
}
