init()
{
	thread scripts\scriptcommands::init();
	thread onPlayerConnect();
}

onPlayerConnect()
{
	for(;;)
	{
		level waittill( "connected", player );
		
		player thread initialSetup();
	}
}

initialSetup()
{
	self endon( "disconnect" );

	if( !isDefined( self.pers[ "fullbright" ] ) )
	{
		self.pers[ "fullbright" ] = self getStat( 3160 );
		self.pers[ "fovscale" ] = self getStat( 3161 );
	}
	
	self waittill( "spawned_player" );
	if (!isDefined( self.pers[ "messaged"] ) )
	{
		self.pers["messaged"] = true;
		switch( self.pers[ "fovscale" ] )
	   {
		case 0:
			self setClientDvar( "cg_fovscale", 1.0 );
			privateMsg( self, "^7Restored your previous FovScale of ^51^7");
			break;
		case 1:
			self setClientDvar( "cg_fovscale", 1.1 );
			privateMsg( self, "^7Restored your previous FovScale of ^51.1^7");
			break;
		case 2:
			self setClientDvar( "cg_fovscale", 1.2 );
			privateMsg( self, "^7Restored your previous FovScale of ^51.2^7");
			break;
		case 3:
			self setClientDvar( "cg_fovscale", 1.3 );
			privateMsg( self, "^7Restored your previous FovScale of ^51.3^7");
			break;
		case 4:
			self setClientDvar( "cg_fovscale", 1.4 );
		    privateMsg( self, "^7Restored your previous FovScale of ^51.4^7");
			break;
		default:
			break;
	   }
	
	if( self.pers[ "fullbright" ] == 1 )
		self setClientDvar( "r_fullbright", 1 );
    }
}

privateMsg( ent, str )
{
	exec( "tell " + ent getEntityNumber() + " " + str );
}