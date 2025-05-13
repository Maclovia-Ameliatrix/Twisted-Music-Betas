function onCreate()
--the concert 
	makeLuaSprite('Fondo','Minor Mods/New Public/New/bg', -600, -550)
	scaleObject('Fondo', 1.3, 1.3)
    setScrollFactor('Fondo', 0.6, 0.6)
	addLuaSprite('Fondo', false)

    makeAnimatedLuaSprite('Speakers','Minor Mods/New Public/New/speakers', 50,-50)
    addAnimationByPrefix('Speakers', 'Machine', 'backspeakers' ,24, true)
    scaleObject('Speakers', 1, 1)
    setScrollFactor('Speakers', 0.8, 0.8)
    addLuaSprite('Speakers', false);

    makeLuaSprite('Atras','Minor Mods/New Public/New/floorback', -300, 400)
	scaleObject('Atras', 1.3, 1.3)
    setScrollFactor('Atras', 0.8, 0.8)
	addLuaSprite('Atras', false)

    makeLuaSprite('Piso','Minor Mods/New Public/New/floor', -400, 1000)
	scaleObject('Piso', 1.3, 1.3)
	addLuaSprite('Piso', false)

    makeAnimatedLuaSprite('Crowd','Minor Mods/New Public/New/crowd', -500,750)
    addAnimationByPrefix('Crowd', 'Simps', 'Crowd' ,24, false)
    scaleObject('Crowd', 1, 1)
    setScrollFactor('Crowd', 1.1, 1.1)
    addLuaSprite('Crowd', true);

    makeLuaSprite('Lights','Minor Mods/New Public/New/grad', -300, -150)
	scaleObject('Lights', 1.5, 1.5)
    setProperty('Lights.alpha', 0.5)
    setBlendMode('Lights', 'add')
	addLuaSprite('Lights', true)

    --the world

    makeLuaSprite('rosa','Minor Mods/New Public/TWIM/bggradient', -300, 0)
	scaleObject('rosa', 1.3, 1.3)
	addLuaSprite('rosa', false)

    makeLuaSprite('Mundo','Minor Mods/New Public/TWIM/baseworld', 0, 1000)
	scaleObject('Mundo', 1.3, 1.3)
	addLuaSprite('Mundo', false)

    makeAnimatedLuaSprite('Lines','Minor Mods/New Public/TWIM/effect', 0,300)
    addAnimationByPrefix('Lines', 'effect', 'effectstage' ,24, true)
    scaleObject('Lines', 1.1, 1.1)
    addLuaSprite('Lines', false);

    makeLuaSprite('Cielo','Minor Mods/New Public/TWIM/Gradient', -300, -150)
	scaleObject('Cielo', 1.5, 1.5)
    setProperty('Cielo.alpha', 0.5)
    setBlendMode('Cielo', 'add')
	addLuaSprite('Cielo', true)

    --sad school

    makeLuaSprite('School','Minor Mods/New Public/RG/back', -500, 100)
	scaleObject('School', 1, 1)
	addLuaSprite('School', false)

    makeLuaSprite('Piano','Minor Mods/New Public/RG/piano', -700, 1000)
	scaleObject('Piano', 1, 1)
	addLuaSprite('Piano', true)

    makeLuaSprite('Thoughs','Minor Mods/New Public/RG/gradient', -500, 100)
	scaleObject('Thoughs', 1, 1)
    setProperty('Thoughs.alpha', 0.5)
    setBlendMode('Thoughs', 'add')
	addLuaSprite('Thoughs', true)

--tween

    makeLuaSprite('Hypnotic','Minor Mods/New Public/TB/bgBaka', 200, 300)
    scaleObject('Hypnotic', 1, 1)
    addLuaSprite('Hypnotic', false)
    
    makeLuaSprite('Hypnotic2','Minor Mods/New Public/TB/bgBaka', 2264, 300)
    scaleObject('Hypnotic2', 1, 1)
    addLuaSprite('Hypnotic2', false)

    makeAnimatedLuaSprite('Teto','Minor Mods/New Public/TB/teto_idle', 600,600)
    addAnimationByPrefix('Teto', 'pinkgirl', 'teto_idle' ,24, false)
    scaleObject('Teto', 1.4, 1.4)
    addLuaSprite('Teto', false);

    makeAnimatedLuaSprite('Neru','Minor Mods/New Public/TB/neru_idle', 300,600)
    addAnimationByPrefix('Neru', 'yellowgirl', 'neru_idle' ,24, false)
    scaleObject('Neru', 1.4, 1.4)
    addLuaSprite('Neru', true);
    doTweenX('move', 'Hypnotic', -1864, 2, 'linear')
    doTweenX('move2', 'Hypnotic2', 200, 2, 'linear')

    makeLuaSprite('Abajo', 'black', 0, -60);
    scaleObject('Abajo', 1.3,1.3)
    setObjectCamera('Abajo', 'camHUD')
	addLuaSprite('Abajo', false);

    makeLuaSprite('Arriba', 'black', 0, 660);
    scaleObject('Arriba', 1.3,1.3)
    setObjectCamera('Arriba', 'camHUD')
	addLuaSprite('Arriba', false);

    makeAnimatedLuaSprite('Miku','Minor Mods/New Public/TWIM/mikustarteventtwim', 275,800)
    addAnimationByPrefix('Miku', 'Scream', 'miku_twim_event' ,24, true)
    setObjectCamera('Miku', 'camHUD')
    addLuaSprite('Miku', false);
end

function onTweenCompleted(tag) 	
    if tag == "move" then
        setProperty('Hypnotic.x', 200)
        doTweenX('move', 'Hypnotic', -1864, 2, 'linear')
    end 
    if tag == "move2" then
        setProperty('Hypnotic2.x', 2264)
        doTweenX('move2', 'Hypnotic2', 200, 2, 'linear')
    end 
end 

function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('Teto', 'pinkgirl');
		objectPlayAnimation('Neru', 'yellowgirl');
		objectPlayAnimation('Crowd', 'Simps');
    end
end