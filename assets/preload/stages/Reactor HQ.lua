function onCreate()
    makeLuaSprite('BG', 'Impostor/Reactor/wallbgthing', -1500,-1000);
    scaleObject('BG', 1.25, 1.25)
	addLuaSprite('BG', false);

    makeLuaSprite('Floor', 'Impostor/Reactor/floornew',-1300,-700);
    scaleObject('Floor', 1, 1)
	addLuaSprite('Floor', false);
    
    makeAnimatedLuaSprite('Abungus1', 'Impostor/Reactor/bgmungus1', -600, 150)
    addAnimationByPrefix('Abungus1', 'back', 'yallow', 24, true)
    objectPlayAnimation('Abungus1', 'back', true)
    scaleObject('Abungus1', 1.25, 1.25)
    addLuaSprite('Abungus1', false)

    makeLuaSprite('BackPillar', 'Impostor/Reactor/backbars', -1300,-700);
    scaleObject('BackPillar', 1, 1)
	addLuaSprite('BackPillar', false);

    makeAnimatedLuaSprite('Core', 'Impostor/Reactor/ball lol', -250, -900)
    addAnimationByPrefix('Core', 'Energy', 'core', 24, true)
    objectPlayAnimation('Core', 'Energy', true)
    scaleObject('Core', 1.25, 1.25)
    addLuaSprite('Core', false)

    makeAnimatedLuaSprite('Abungus2', 'Impostor/Reactor/bgmungus2', -1100, 100)
    addAnimationByPrefix('Abungus2', 'front', 'brown', 24, true)
    objectPlayAnimation('Abungus2', 'front', true)
    scaleObject('Abungus2', 1.25, 1.25)
    addLuaSprite('Abungus2', false)

    makeLuaSprite('MidPillar', 'Impostor/Reactor/frontpillars', -1300,-700);
    scaleObject('MidPillar', 1, 1)
	addLuaSprite('MidPillar', false);

    makeLuaSprite('ForePillar', 'Impostor/Reactor/frontblack', -1300,-700);
    scaleObject('ForePillar', 1, 1)
	addLuaSprite('ForePillar', false);

    makeAnimatedLuaSprite('Glow', 'Impostor/Reactor/yeahman', -850, -1200)
    addAnimationByPrefix('Glow', 'Dark', 'Reactor Overlay Top', 24, true)
    objectPlayAnimation('Glow', 'Dark', true)
    scaleObject('Glow', 1.25, 1.25)
    addLuaSprite('Glow', false)
end