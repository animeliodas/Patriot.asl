state("game")
{

	int loading : "Game.dll", 0x0009724C, 0x8, 0x80, 0x1C, 0x8, 0xA8;
	
}

startup
{

	settings.Add("AutoSplit",false);

}

isLoading
{
	if( current.loading == 0 )
	{
		return false;
	}
		return true;
}

split
{ 
	
	if( old.loading == 0 && current.loading == 2)
	{
		return settings["AutoSplit"];
	}
		
}