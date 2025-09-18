function Battle_GetPartyIcon(PARTY_NAME){
	switch (string_lower(PARTY_NAME)) {
		case "kaban":
			return 0;
			break;
		case "serval":
			return 1;
			break;
	}
}