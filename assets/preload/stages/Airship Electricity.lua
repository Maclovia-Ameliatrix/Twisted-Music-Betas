function onCreate()
    makeLuaSprite('BG', 'Impostor/Neurotic/graybg', -1500, -300);
	addLuaSprite('BG', false);
    
    makeAnimatedLuaSprite('Glow', 'Impostor/Neurotic/grayglowy', 600, 200)
    addAnimationByPrefix('Glow', 'Ohno', 'jar??', 24, true)
    objectPlayAnimation('Glow', 'Ohno', true)
    addLuaSprite('Glow', false)

    makeAnimatedLuaSprite('Black', 'Impostor/Neurotic/grayblack', -1250, 50)
    addAnimationByPrefix('Black', 'Watch', 'whoisthismf', 24, true)
    objectPlayAnimation('Black', 'Watch', true)
    scaleObject('Black', 1,1)
    addLuaSprite('Black', false)

    makeAnimatedLuaSprite('Benjamin', 'Impostor/Neurotic/black-watching', 850, -50)
    addAnimationByPrefix('Benjamin', 'Watch', 'idle', 24, true)
    objectPlayAnimation('Benjamin', 'Watch', true)
    setProperty('Benjamin.flipX', true)
    scaleObject('Benjamin', 1.25,1.25)
    addLuaSprite('Benjamin', false)

    makeLuaSprite('GrayOverlay', 'Impostor/Neurotic/grayoverlay', -1500, -200);
    setProperty('GrayOverlay.alpha', 0.4)
    scaleObject('GrayOverlay', 1, 1)
	addLuaSprite('GrayOverlay', true);

end