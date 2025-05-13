function onCreate()
-----Skid & Pump-----
makeLuaSprite('NeoBG', 'Neo/week2/buildings', -400, -200);
setLuaSpriteScrollFactor('NeoBG', 0.8, 0.8);
scaleObject('NeoBG', 1.2, 1.2)
addLuaSprite('NeoBG', false);

makeLuaSprite('NeoSign', 'Neo/week2/neonsigns', -400, -200);
setLuaSpriteScrollFactor('NeoSign', 1, 1);
scaleObject('NeoSign', 1.2, 1.2)
addLuaSprite('NeoSign', false);

makeLuaSprite('NeoBGLigths', 'Neo/week2/scaffolding', -400, -200);
setLuaSpriteScrollFactor('NeoBGLigths', 1, 1);
scaleObject('NeoBGLigths', 1, 1)
addLuaSprite('NeoBGLigths', false);

makeAnimatedLuaSprite('NeoSpeakerBlue','Neo/week2/SpookySpeakersB', -600, 0)
addAnimationByPrefix('NeoSpeakerBlue', 'Left', 'BG SPEAKERS' ,24, true)
objectPlayAnimation('NeoSpeakerBlue','Left' ,true)
scaleObject('NeoSpeakerBlue', 1, 1)
addLuaSprite('NeoSpeakerBlue', false);

makeAnimatedLuaSprite('NeoSpeakerPink','Neo/week2/SpookySpeakersP', 1600, 0)
addAnimationByPrefix('NeoSpeakerPink', 'Right', 'BG SPEAKERS PINK' ,24, true)
objectPlayAnimation('NeoSpeakerPink','Right' ,true)
scaleObject('NeoSpeakerPink', 1, 1)
addLuaSprite('NeoSpeakerPink', false);

makeAnimatedLuaSprite('NeoPublic','Neo/week2/stuff_3', -200, 650)
addAnimationByPrefix('NeoPublic', 'Cameos', 'Crowd 2 instance ' ,24, true)
objectPlayAnimation('NeoPublic','Cameos' ,true)
scaleObject('NeoPublic', 1.5, 1.5)
addLuaSprite('NeoPublic', true);
----Corrupt Lemon----
makeLuaSprite('NeoEvilBG', 'Neo/weekLemon/buildingsevil', -400, -400);
setLuaSpriteScrollFactor('NeoEvilBG', 0.8, 0.8);
setProperty('NeoEvilBG.alpha', 0)
scaleObject('NeoEvilBG', 1.2, 1.2)
addLuaSprite('NeoEvilBG', false);

makeLuaSprite('NeoEvilFloor', 'Neo/weekLemon/floorevil', -400, -200);
setLuaSpriteScrollFactor('NeoEvilFloor', 1, 1);
setProperty('NeoEvilFloor.alpha', 0)
scaleObject('NeoEvilFloor', 1.2, 1.2)
addLuaSprite('NeoEvilFloor', false);

makeAnimatedLuaSprite('NeoEvilTVR','Neo/weekLemon/XO_TV_R', 1600, 200)
addAnimationByPrefix('NeoEvilTVR', 'EvilRight', 'BG SPEAKERS TVS OtherSide' ,24, true)
objectPlayAnimation('NeoEvilTVR','EvilRight' ,true)
setProperty('NeoEvilTVR.alpha', 0)
scaleObject('NeoEvilTVR', 1, 1)
addLuaSprite('NeoEvilTVR', false);

makeAnimatedLuaSprite('NeoEvilTVL','Neo/weekLemon/XO_TV_L', -600, 200)
addAnimationByPrefix('NeoEvilTVL', 'EvilLeft', 'BG SPEAKERS TVS' ,24, true)
objectPlayAnimation('NeoEvilTVL','EvilLeft' ,true)
setProperty('NeoEvilTVL.alpha', 0)
scaleObject('NeoEvilTVL', 1, 1)
addLuaSprite('NeoEvilTVL', false);

makeAnimatedLuaSprite('NeoEvilMouth','Neo/weekLemon/MOUTH', 500, 800)
addAnimationByPrefix('NeoEvilMouth', 'hole', 'MOUTHANIM' ,24, true)
objectPlayAnimation('NeoEvilMouth','hole' ,true)
setProperty('NeoEvilMouth.alpha', 0)
scaleObject('NeoEvilMouth', 1.25, 1.25)
addLuaSprite('NeoEvilMouth', false);

makeLuaSprite('NeoEvilFog', 'Neo/weekLemon/fog', -400, -600);
setLuaSpriteScrollFactor('NeoEvilFog', 1, 1);
setProperty('NeoEvilFloor.alpha', 0)
scaleObject('NeoEvilFog', 1.2, 1.2)
addLuaSprite('NeoEvilFog', true);

end