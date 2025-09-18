///@desc Interact

event_inherited();
if(room=room_savannah_1){
	switch(interacted){
		case 0:
			Dialog_Add_Ext("* If you're able to&  talk to me, others too&  have the same result.","{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext("* Start with a warm&  greeting and other&  topics will come to you.","{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			interacted++;
			break;
		case 1:
			Dialog_Add_Ext("* Hmm...{w}&* Perhaps I wasn't talking&  straight?","{char_link 2}{voice 4}{face 2}{face_emotion 4}");
			Dialog_Add_Ext("* Sometimes talking&  directly leads to&  available topics.","{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext("* You should try this out!","{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			interacted++;
			break;
		case 2:
			Dialog_Add_Ext("* You can do it!","{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			break;
	}
	Dialog_Start();
}