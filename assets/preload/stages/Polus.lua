function onCreate()
    makeLuaSprite('BG', 'Impostor/Polus/newsky', -1300,-1000);
    scaleObject('BG', 1, 1)
	addLuaSprite('BG', false);

    makeLuaSprite('Clouds', 'Impostor/Polus/newcloud', -1300,-1000);
    scaleObject('Clouds', 1, 1)
	addLuaSprite('Clouds', false);
    
    makeAnimatedLuaSprite('Snowback', 'Impostor/Polus/snowback', -1400, -800)
    addAnimationByPrefix('Snowback', 'back', 'Snow group', 24, true)
    objectPlayAnimation('Snowback', 'back', true)
    scaleObject('Snowback', 3.5, 3.5)
    addLuaSprite('Snowback', false)

    makeLuaSprite('Floor', 'Impostor/Polus/newstage',-1300,-1000);
    scaleObject('Floor', 1, 1)
	addLuaSprite('Floor', false);

    makeLuaSprite('overlay', 'Impostor/Polus/newoverlay',-1300,-700);
    scaleObject('overlay', 1, 1)
    setProperty('overlay.alpha', 0.5);
	addLuaSprite('overlay', false);

    makeLuaSprite('overlay2', 'Impostor/Polus/newlava', -1500,-1000);
    scaleObject('overlay2', 1, 1)
    setProperty('overlay2.alpha', 0.5);
	addLuaSprite('overlay2', false);
       
    makeAnimatedLuaSprite('Snowfront', 'Impostor/Polus/snowfront', -1400, -800)
    addAnimationByPrefix('Snowfront', 'front', 'snow fall', 24, true)
    objectPlayAnimation('Snowfront', 'front', true)
    scaleObject('Snowfront', 3, 3)
    addLuaSprite('Snowfront', true)
end