function onCreate()
    makeLuaSprite('ParedRojo','EXE/Mario Locuras/virtual/Wall Bg',-1400,-850)
    setScrollFactor('ParedRojo',0.4,0.4)
    addLuaSprite('ParedRojo', false)

    makeLuaSprite('TooLateRojo','EXE/Mario Locuras/virtual/toolateBG',-1400,-850)
    setScrollFactor('TooLateRojo',0.4,0.4)
    scaleObject('TooLateRojo', 2,2)
    setProperty('TooLateRojo.alpha', 0)
    addLuaSprite('TooLateRojo', false)
    
    makeLuaSprite('CabezaRojo','EXE/Mario Locuras/virtual/headbg',-1400,-850)
    setScrollFactor('CabezaRojo',0.4,0.4)
    scaleObject('CabezaRojo', 2,2)
    setProperty('CabezaRojo.alpha', 0)
    addLuaSprite('CabezaRojo', false)

    makeAnimatedLuaSprite('GFend','EXE/Mario Locuras/virtual/Mr_Virtual_Girlfriend_Assets_jaj',650,-100)
    setScrollFactor('GFend',0.6,0.6)
    addAnimationByPrefix('GFend','LOLOLOLOLOLOL','GF Dies lol',24,false)
    setProperty('GFend.visible', false)
    addLuaSprite('GFend',false)

    makeLuaSprite('TubosDeatrasRojos','EXE/Mario Locuras/virtual/Back Pipes',-1480,-850)
    setScrollFactor('TubosDeatrasRojos',0.6,0.6)
    addLuaSprite('TubosDeatrasRojos', false)

    makeLuaSprite('PlatafromatrasRojo','EXE/Mario Locuras/virtual/Back Platform',-1450,-850)
    setScrollFactor('PlatafromatrasRojo',0.6,0.6)
    addLuaSprite('PlatafromatrasRojo', false)

    makeAnimatedLuaSprite('GlitchesKoopasRojos','EXE/Mario Locuras/virtual/v_koopa_thorny',-150,75)
    setScrollFactor('GlitchesKoopasRojos',0.6,0.6)
    addAnimationByPrefix('GlitchesKoopasRojos','idle','Koopa Idle Glitch',24,false)
    addAnimationByPrefix('GlitchesKoopasRojos','Glitch','glitch in',24,false)
    setProperty('GlitchesKoopasRojos.visible', false)
    addLuaSprite('GlitchesKoopasRojos',false)

    makeAnimatedLuaSprite('GlitchesKoopasRojos2','EXE/Mario Locuras/virtual/v_koopa_thorny',550,75)
    setScrollFactor('GlitchesKoopasRojos2',0.6,0.6)
    addAnimationByPrefix('GlitchesKoopasRojos2','idle','Koopa Idle Glitch',24,false)
    addAnimationByPrefix('GlitchesKoopasRojos2','Glitch','glitch in',24,false)
    setProperty('GlitchesKoopasRojos2.flipX', true)
    setProperty('GlitchesKoopasRojos2.visible', false)
    addLuaSprite('GlitchesKoopasRojos2',false)

    makeLuaSprite('TubosdearribaRojos','EXE/Mario Locuras/virtual/Corner top Left Pipes',-1450,-850)
    setScrollFactor('TubosdearribaRojos',0.8,0.8)
    addLuaSprite('TubosdearribaRojos', false)
    
    makeLuaSprite('TubosEnfrenteRojos','EXE/Mario Locuras/virtual/Front Pipes',-1480,-850)
    setScrollFactor('TubosEnfrenteRojos', 1, 1)
    scaleObject('TubosEnfrenteRojos', 1, 1)
    addLuaSprite('TubosEnfrenteRojos', false)

    makeLuaSprite('PlatafromenfrenteRojo','EXE/Mario Locuras/virtual/Main Platform',-1450,-850)
    setScrollFactor('PlatafromenfrenteRojo', 1, 1)
    scaleObject('PlatafromenfrenteRojo', 1, 1)
    addLuaSprite('PlatafromenfrenteRojo', false)

    makeLuaSprite('RocasRojo','EXE/Mario Locuras/virtual/Platform',-1400,-300)
    setScrollFactor('RocasRojo', 1, 1)
    scaleObject('RocasRojo', 1, 1)
    setProperty('RocasRojo.alpha', 0)
    addLuaSprite('RocasRojo', false)
end
function onBeatHit()
	if curBeat % 1 == 0 then
		objectPlayAnimation('GlitchesKoopasRojos', 'idle');
        objectPlayAnimation('GlitchesKoopasRojos2', 'idle');
    end
end