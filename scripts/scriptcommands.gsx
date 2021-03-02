init()
{
	addscriptcommand( "fov", 1 );
	addscriptcommand( "fps", 1 );
}


commandHandler( cmd, arg )
{
	self endon( "disconnect" );
	level endon( "game_ended" );

	switch( cmd )
	{
		case "fps":
			if( self.pers[ "fullbright" ] == 0 )
			{
				privateMsg( self, "^7Fullbright ^2On^7");
				self setClientDvar( "r_fullbright", 1 );
				self setstat( 3160, 1 );
				self.pers[ "fullbright" ] = 1;
			}
			else
			{
				privateMsg( self, "^7Fullbright ^1Off^7");
				self setClientDvar( "r_fullbright", 0 );
				self setstat( 3160, 0 );
				self.pers[ "fullbright" ] = 0;
			}
			break;

		case "fov":
			if( self.pers["fovscale"] == 0 )
			{
				privateMsg( self, "^7FovScale set to ^51.1^7");
				self setClientDvar( "cg_fovscale", 1.1 );
				self setClientDvar( "cg_fov", 80 );
				self setstat( 3161, 1 );
				self.pers[ "fovscale" ] = 1;
			}
			else if( self.pers["fovscale"] == 1 )
			{
				privateMsg( self, "^7FovScale set to ^51.2^7");
				self setClientDvar( "cg_fovscale", 1.2 );
				self setstat( 3161, 2 );
				self.pers[ "fovscale" ] = 2;
			}
			else if( self.pers["fovscale"] == 2 )
			{
				privateMsg( self, "^7FovScale set to ^51.3^7");
				self setClientDvar( "cg_fovscale", 1.3 );
				self setstat( 3161, 3 );
				self.pers[ "fovscale" ] = 3;
			}
			else if( self.pers["fovscale"] == 3 )
			{
				privateMsg( self, "^7FovScale set to ^51.4^7");
				self setClientDvar( "cg_fovscale", 1.4 );
				self setstat( 3161, 4 );
				self.pers[ "fovscale" ] = 4;
			}
			else if( self.pers["fovscale"] == 4 )
			{
				privateMsg( self, "^7FovScale set to ^51^7");
				self setClientDvar( "cg_fovscale", 1 );
				self setstat( 3161, 0 );
				self.pers[ "fovscale" ] = 0;
			}
			break;
			
		default:
			break;
	}
}

privateMsg( ent, str )
{
	exec( "tell " + ent getEntityNumber() + " " + str );
}