function setTab03Syn ( i )
	{
		selectTab03Syn(i);
	}
	
function selectTab03Syn ( i )
	{
		switch(i){
			case 1:
			document.getElementById('font1').className="url-hover hover";
			break;
			
			case 2:
			document.getElementById('font1').className="url";
			break;
			
			case 3:
			document.getElementById('font2').className="user-name hover";	
			break;
			
			case 4:
			document.getElementById('font2').className="user-name";
			break;		
		}
	}