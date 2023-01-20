#region look for player

	if(!instance_exists(owner)){
		with(NecoArc){
			other.owner = id;	
		}
	}

#endregion