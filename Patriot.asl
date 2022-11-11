state("game")
{

	int loading : "Game.dll", 0x0009724C, 0x8, 0x80, 0x1C, 0x8, 0xA8;
	
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
	
	if(old.loading < current.loading & current.loading == 2)
	{
		return true;
	}
		
}
