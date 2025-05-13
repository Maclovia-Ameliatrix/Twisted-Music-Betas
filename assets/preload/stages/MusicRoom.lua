function onCreate()
    makeLuaSprite('BG', 'Doki Doki/musicroom/Music_RoomLNF', -600, -200);
	setLuaSpriteScrollFactor('BG', 1.0, 1.0);
    scaleObject('BG', 1.75,1.75)
	addLuaSprite('BG', false);

    makeLuaSprite('FG', 'Doki Doki/musicroom/Music_Room_FG', -600, -200);
	setLuaSpriteScrollFactor('FG', 1.0, 1.0);
    scaleObject('FG', 1.75,1.75)
	addLuaSprite('FG', true);

    makeLuaSprite('Light', 'Doki Doki/musicroom/Music_RoomLight', -600, -200);
	setLuaSpriteScrollFactor('Light', 1.0, 1.0);
    scaleObject('Light', 1.75,1.75)
	addLuaSprite('Light', true);
end