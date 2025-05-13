function onCreatePost()
setObjectOrder('table',8);
setObjectOrder('gfGroup',10);

end
function onCreate()

	setPropertyFromClass('GameOverSubstate', 'characterName', 'murder'); --Character json file for the death animation
   	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'loss_scary'); --put in mods/sounds/
   	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'scary_gameOver'); --put in mods/music/
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/


	-- background shit
	makeLuaSprite('room', 'Minor Mods/bedroom/bedroom_backdrop_boogie', -520, -152);
	setLuaSpriteScrollFactor('roomscary', 1.0, 1.0);	

	makeLuaSprite('bed', 'Minor Mods/bedroom/bed_boogie', -27, 570);
	setLuaSpriteScrollFactor('bedscary', 1.0, 1.0);

 	makeLuaSprite('table', 'Minor Mods/bedroom/bedside_table_boogie', -470, 440);
	setLuaSpriteScrollFactor('table', 1.2, 1.1);

	makeLuaSprite('lamp', 'Minor Mods/bedroom/lamp_boogie', 1050, -142);
	setLuaSpriteScrollFactor('lamp', 1.1, 1.2);
        setObjectOrder('lamp', 4);

   	makeAnimatedLuaSprite('beef','Minor Mods/bedroom/scared_lil_bitch', 400, 645)
    	addAnimationByPrefix('beef','minor mods/bedroom/scared_lil_bitch','bf under bedsheets',24,true);
    	objectPlayAnimation('beef','bedside table',false);
	setLuaSpriteScrollFactor('beef', 1.0, 1.0);
	setObjectOrder('beef', 7);



	addLuaSprite('room', false);

	addLuaSprite('bed',false);

	addLuaSprite('beef',true);

	addLuaSprite('lamp',false);
	
	addLuaSprite('table',false);
end