function onCreate()
    makeLuaSprite('BG', 'Impostor/Jorsawsee/Voting Time/main_bg_meeting', -600, -200);
    scaleObject('BG', 1, 1)
	addLuaSprite('BG', false);

    makeLuaSprite('Suspicious', 'Impostor/Jorsawsee/Voting Time/backer_groung_voting', 190, -25);
    scaleObject('Suspicious', 1, 1)
    scaleObject('Suspicious', 0.8, 0.8)
	addLuaSprite('Suspicious', false);

    makeLuaSprite('Chairs', 'Impostor/Jorsawsee/Voting Time/CHAIRS!!!!!!!!!!!!!!!', -300, 400);
    scaleObject('Chairs', 1, 1)
	addLuaSprite('Chairs', false);

    makeLuaSprite('Table', 'Impostor/Jorsawsee/Voting Time/table_voting', -150, 350);
    scaleObject('Table', 1, 1)
	addLuaSprite('Table', true);

    makeLuaSprite('Abajo', 'black', 0, -30);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 610);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);
end

function onCreatePost()
	setObjectOrder('momGroup',3);	
    setObjectOrder('picoGroup',3);	
    setProperty('pico.flipX', false)
end