function onCreate()
    makeLuaSprite('Sky', 'Impostor/Topat Airship/fartingSky', -1600, -1000);
    scaleObject('Sky', 1, 1)
	addLuaSprite('Sky', false);

    makeLuaSprite('backCloud', 'Impostor/Topat Airship/backSkyyellow', -1500, 100);
    scaleObject('backCloud', 1, 1)
    setLuaSpriteScrollFactor('backCloud', 0.5, 0.5);	
	addLuaSprite('backCloud', false);

    makeLuaSprite('frontCloud', 'Impostor/Topat Airship/cloudYellow 1', -1500, 100);
    scaleObject('frontCloud', 1, 1)
    setLuaSpriteScrollFactor('frontCloud', 0.75, 0.75);	
	addLuaSprite('frontCloud', false);

    makeLuaSprite('Window', 'Impostor/Topat Airship/window', -1500, -1000);
    scaleObject('Window', 1, 1)
	addLuaSprite('Window', false);

    makeLuaSprite('BackFloor', 'Impostor/Topat Airship/backDlowFloor', -700, 275);
    scaleObject('BackFloor', 1, 1)
	addLuaSprite('BackFloor', false);
    
    makeLuaSprite('Floor', 'Impostor/Topat Airship/DlowFloor', -2500, 300);
    scaleObject('Floor', 1, 1)
	addLuaSprite('Floor', false);
end